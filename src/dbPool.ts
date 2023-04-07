import { Pool, QueryResult } from 'pg';

const { DB_PASS, DB_NAME, DB_USER_NAME, DB_PORT, DB_HOST } = process.env;

const pool = new Pool({
  host: DB_HOST,
  port: Number(DB_PORT),
  database: DB_NAME,
  user: DB_USER_NAME,
  password: DB_PASS,
  ssl: {
    rejectUnauthorized: false,
  },
  connectionTimeoutMillis: 5000,
});

export const poolQuery = async (action: string, values?: any[]) => {
  let result: QueryResult;

  try {
    result = await pool.query(action, values);
  } catch (err) {
    console.log(err);
    return err;
  }

  return result.rows;
};
