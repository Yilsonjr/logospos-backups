--
-- PostgreSQL database dump
--

\restrict 10Jd3ACt6QgLh63CyIfk1XUQ6xvxFFz6sj2St6xMyRFNrpbxmClXaDRhAdmOhEz

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.11 (Ubuntu 17.11-1.pgdg24.04+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: auth; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA auth;


ALTER SCHEMA auth OWNER TO supabase_admin;

--
-- Name: extensions; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA extensions;


ALTER SCHEMA extensions OWNER TO postgres;

--
-- Name: graphql; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA graphql;


ALTER SCHEMA graphql OWNER TO supabase_admin;

--
-- Name: graphql_public; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA graphql_public;


ALTER SCHEMA graphql_public OWNER TO supabase_admin;

--
-- Name: pgbouncer; Type: SCHEMA; Schema: -; Owner: pgbouncer
--

CREATE SCHEMA pgbouncer;


ALTER SCHEMA pgbouncer OWNER TO pgbouncer;

--
-- Name: realtime; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA realtime;


ALTER SCHEMA realtime OWNER TO supabase_admin;

--
-- Name: storage; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA storage;


ALTER SCHEMA storage OWNER TO supabase_admin;

--
-- Name: vault; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA vault;


ALTER SCHEMA vault OWNER TO supabase_admin;

--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: supabase_vault; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;


--
-- Name: EXTENSION supabase_vault; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: aal_level; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);


ALTER TYPE auth.aal_level OWNER TO supabase_auth_admin;

--
-- Name: code_challenge_method; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);


ALTER TYPE auth.code_challenge_method OWNER TO supabase_auth_admin;

--
-- Name: factor_status; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);


ALTER TYPE auth.factor_status OWNER TO supabase_auth_admin;

--
-- Name: factor_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);


ALTER TYPE auth.factor_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_authorization_status; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_authorization_status AS ENUM (
    'pending',
    'approved',
    'denied',
    'expired'
);


ALTER TYPE auth.oauth_authorization_status OWNER TO supabase_auth_admin;

--
-- Name: oauth_client_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_client_type AS ENUM (
    'public',
    'confidential'
);


ALTER TYPE auth.oauth_client_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_registration_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_registration_type AS ENUM (
    'dynamic',
    'manual'
);


ALTER TYPE auth.oauth_registration_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_response_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_response_type AS ENUM (
    'code'
);


ALTER TYPE auth.oauth_response_type OWNER TO supabase_auth_admin;

--
-- Name: one_time_token_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);


ALTER TYPE auth.one_time_token_type OWNER TO supabase_auth_admin;

--
-- Name: categoria_scoring; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.categoria_scoring AS ENUM (
    'A',
    'B',
    'C'
);


ALTER TYPE public.categoria_scoring OWNER TO postgres;

--
-- Name: estado_cobro; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_cobro AS ENUM (
    'pendiente',
    'parcial',
    'cobrado'
);


ALTER TYPE public.estado_cobro OWNER TO postgres;

--
-- Name: estado_pago; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_pago AS ENUM (
    'pagado',
    'pendiente',
    'parcial'
);


ALTER TYPE public.estado_pago OWNER TO postgres;

--
-- Name: estado_prestamo; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_prestamo AS ENUM (
    'activo',
    'al_dia',
    'en_mora',
    'pagado',
    'cancelado'
);


ALTER TYPE public.estado_prestamo OWNER TO postgres;

--
-- Name: estado_secado; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_secado AS ENUM (
    'en_proceso',
    'completado',
    'cancelado'
);


ALTER TYPE public.estado_secado OWNER TO postgres;

--
-- Name: estado_sync; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_sync AS ENUM (
    'pendiente',
    'sincronizado',
    'rechazado'
);


ALTER TYPE public.estado_sync OWNER TO postgres;

--
-- Name: metodo_pago; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.metodo_pago AS ENUM (
    'efectivo',
    'transferencia',
    'cheque'
);


ALTER TYPE public.metodo_pago OWNER TO postgres;

--
-- Name: modalidad_pago; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.modalidad_pago AS ENUM (
    'vencimiento',
    'cuotas',
    'abonos_libres'
);


ALTER TYPE public.modalidad_pago OWNER TO postgres;

--
-- Name: rol_usuario; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.rol_usuario AS ENUM (
    'admin',
    'vendedor',
    'vendedor_senior'
);


ALTER TYPE public.rol_usuario OWNER TO postgres;

--
-- Name: tipo_cacao; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_cacao AS ENUM (
    'seco',
    'baba'
);


ALTER TYPE public.tipo_cacao OWNER TO postgres;

--
-- Name: tipo_interes; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_interes AS ENUM (
    'simple',
    'saldo_insoluto',
    'exento'
);


ALTER TYPE public.tipo_interes OWNER TO postgres;

--
-- Name: tipo_mora; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_mora AS ENUM (
    'porcentaje_mensual',
    'cargo_fijo',
    'sin_mora'
);


ALTER TYPE public.tipo_mora OWNER TO postgres;

--
-- Name: tipo_pago_prestamo; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_pago_prestamo AS ENUM (
    'abono',
    'cuota',
    'cancelacion'
);


ALTER TYPE public.tipo_pago_prestamo OWNER TO postgres;

--
-- Name: tipo_plazo; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_plazo AS ENUM (
    'meses',
    'cosecha_mayor',
    'cosecha_menor'
);


ALTER TYPE public.tipo_plazo OWNER TO postgres;

--
-- Name: tipo_proveedor; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_proveedor AS ENUM (
    'registrado',
    'ocasional'
);


ALTER TYPE public.tipo_proveedor OWNER TO postgres;

--
-- Name: unidad_medida; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.unidad_medida AS ENUM (
    'kg',
    'quintal',
    'saco',
    'caja',
    'cubeta',
    'libra',
    'quintal_seco',
    'quintal_baba',
    'contenedor'
);


ALTER TYPE public.unidad_medida OWNER TO postgres;

--
-- Name: action; Type: TYPE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);


ALTER TYPE realtime.action OWNER TO supabase_realtime_admin;

--
-- Name: equality_op; Type: TYPE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in',
    'like',
    'ilike',
    'is',
    'match',
    'imatch',
    'isdistinct'
);


ALTER TYPE realtime.equality_op OWNER TO supabase_realtime_admin;

--
-- Name: user_defined_filter; Type: TYPE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text,
	negate boolean
);


ALTER TYPE realtime.user_defined_filter OWNER TO supabase_realtime_admin;

--
-- Name: wal_column; Type: TYPE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);


ALTER TYPE realtime.wal_column OWNER TO supabase_realtime_admin;

--
-- Name: wal_rls; Type: TYPE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);


ALTER TYPE realtime.wal_rls OWNER TO supabase_realtime_admin;

--
-- Name: buckettype; Type: TYPE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TYPE storage.buckettype AS ENUM (
    'STANDARD',
    'ANALYTICS',
    'VECTOR'
);


ALTER TYPE storage.buckettype OWNER TO supabase_storage_admin;

--
-- Name: email(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;


ALTER FUNCTION auth.email() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION email(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';


--
-- Name: jwt(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;


ALTER FUNCTION auth.jwt() OWNER TO supabase_auth_admin;

--
-- Name: role(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;


ALTER FUNCTION auth.role() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION role(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';


--
-- Name: uid(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;


ALTER FUNCTION auth.uid() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION uid(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';


--
-- Name: grant_pg_cron_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
    revoke trigger on cron.job_run_details from postgres;
  END IF;
END;
$$;


ALTER FUNCTION extensions.grant_pg_cron_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_cron_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';


--
-- Name: grant_pg_graphql_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $_$
begin
    if not exists (
        select 1
        from pg_catalog.pg_event_trigger_ddl_commands() ev
        join pg_catalog.pg_extension e on ev.objid = e.oid
        where e.extname = 'pg_graphql'
    ) then
        return;
    end if;

    drop function if exists graphql_public.graphql;
    create or replace function graphql_public.graphql(
        "operationName" text default null,
        query text default null,
        variables jsonb default null,
        extensions jsonb default null
    )
        returns jsonb
        language sql
        set search_path to ''
    as $$
        select graphql.resolve(
            query := query,
            variables := coalesce(variables, '{}'),
            "operationName" := "operationName",
            extensions := extensions
        );
    $$;

    -- Attach the wrapper to the extension so DROP EXTENSION cascades to it,
    -- which in turn triggers set_graphql_placeholder to reinstall the "not enabled" stub.
    alter extension pg_graphql add function graphql_public.graphql(text, text, jsonb, jsonb);

    grant usage on schema graphql to postgres, anon, authenticated, service_role;
    grant execute on function graphql.resolve to postgres, anon, authenticated, service_role;
    grant usage on schema graphql to postgres with grant option;
    grant usage on schema graphql_public to postgres with grant option;
end;
$_$;


ALTER FUNCTION extensions.grant_pg_graphql_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_graphql_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';


--
-- Name: grant_pg_net_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    IF EXISTS (
      SELECT FROM pg_extension
      WHERE extname = 'pg_net'
      -- all versions in use on existing projects as of 2025-02-20
      -- version 0.12.0 onwards don't need these applied
      AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8.0', '0.10.0', '0.11.0')
    ) THEN
      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

      REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
      REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

      GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    END IF;
  END IF;
END;
$$;


ALTER FUNCTION extensions.grant_pg_net_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_net_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';


--
-- Name: pgrst_ddl_watch(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


ALTER FUNCTION extensions.pgrst_ddl_watch() OWNER TO supabase_admin;

--
-- Name: pgrst_drop_watch(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


ALTER FUNCTION extensions.pgrst_drop_watch() OWNER TO supabase_admin;

--
-- Name: set_graphql_placeholder(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    SET search_path TO ''
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
            set search_path to ''
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;


ALTER FUNCTION extensions.set_graphql_placeholder() OWNER TO supabase_admin;

--
-- Name: FUNCTION set_graphql_placeholder(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';


--
-- Name: graphql(text, text, jsonb, jsonb); Type: FUNCTION; Schema: graphql_public; Owner: supabase_admin
--

CREATE FUNCTION graphql_public.graphql("operationName" text DEFAULT NULL::text, query text DEFAULT NULL::text, variables jsonb DEFAULT NULL::jsonb, extensions jsonb DEFAULT NULL::jsonb) RETURNS jsonb
    LANGUAGE plpgsql
    AS $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;


ALTER FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) OWNER TO supabase_admin;

--
-- Name: get_auth(text); Type: FUNCTION; Schema: pgbouncer; Owner: supabase_admin
--

CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO ''
    AS $_$
  BEGIN
      RAISE DEBUG 'PgBouncer auth request: %', p_usename;

      RETURN QUERY
      SELECT
          rolname::text,
          CASE WHEN rolvaliduntil < now()
              THEN null
              ELSE rolpassword::text
          END
      FROM pg_authid
      WHERE rolname=$1 and rolcanlogin;
  END;
  $_$;


ALTER FUNCTION pgbouncer.get_auth(p_usename text) OWNER TO supabase_admin;

--
-- Name: abrir_jornada(numeric, numeric, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text DEFAULT NULL::text) RETURNS jsonb
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_usuario  uuid;
  v_anterior jornada%rowtype;
  v_cuadre   jsonb := null;
  v_jornada  uuid;
  v_precio   uuid;
  v_ant_seco numeric;
  v_ant_baba numeric;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede abrir la jornada.';
  end if;
  if p_precio_seco is null or p_precio_seco <= 0 then
    raise exception 'El precio del quintal seco debe ser mayor que 0.';
  end if;
  if p_precio_baba is null or p_precio_baba <= 0 then
    raise exception 'El precio del quintal en baba debe ser mayor que 0.';
  end if;

  v_usuario := usuario_actual();
  if v_usuario is null then
    raise exception 'No se pudo determinar el usuario que abre la jornada.';
  end if;

  -- Serializa dos admins abriendo a la vez. Sin esto, el segundo choca contra
  -- el índice único con un error incomprensible.
  perform pg_advisory_xact_lock(hashtext('jornada_apertura'));

  -- Cerrar la que haya quedado abierta, con su cuadre calculado igual.
  select * into v_anterior from jornada where estado = 'abierta' limit 1;
  if found then
    v_cuadre := calcular_cuadre_jornada(v_anterior.id);
    update jornada set
      estado              = 'cerrada_sin_cuadre',
      cerrada_en          = now(),
      cerrada_por         = v_usuario,
      compras_count       = (v_cuadre->>'compras_count')::int,
      kg_seco             = (v_cuadre->>'kg_seco')::numeric,
      kg_baba             = (v_cuadre->>'kg_baba')::numeric,
      rd_seco             = (v_cuadre->>'rd_seco')::numeric,
      rd_baba             = (v_cuadre->>'rd_baba')::numeric,
      rd_total            = (v_cuadre->>'rd_total')::numeric,
      pagado_efectivo     = (v_cuadre->>'pagado_efectivo')::numeric,
      deuda_generada      = (v_cuadre->>'deuda_generada')::numeric,
      abonos_cobrados     = (v_cuadre->>'abonos_cobrados')::numeric,
      detalle_vendedores  = v_cuadre->'detalle_vendedores',
      cuadre_calculado_en = now()
    where id = v_anterior.id;
  end if;

  insert into jornada (abierta_por, nota) values (v_usuario, p_nota)
  returning id into v_jornada;

  -- Se conserva el precio anterior para el histórico de variación: hoy el
  -- frontend nunca llenaba estas dos columnas.
  select precio_quintal_seco, precio_quintal_baba into v_ant_seco, v_ant_baba
    from precio_diario order by vigente_desde desc limit 1;

  insert into precio_diario (
    fecha, precio_quintal_seco, precio_quintal_baba,
    precio_anterior, precio_anterior_baba,
    hora_cambio, vigente_desde, fijado_por, jornada_id, precio_baba_calculado
  ) values (
    hoy_rd(), p_precio_seco, p_precio_baba,
    v_ant_seco, v_ant_baba,
    (now() at time zone 'America/Santo_Domingo')::time, now(), v_usuario, v_jornada, false
  ) returning id into v_precio;

  update jornada set precio_apertura_id = v_precio where id = v_jornada;

  return jsonb_build_object(
    'jornada', (select to_jsonb(j) - 'detalle_vendedores' from jornada j where j.id = v_jornada),
    'precio',  (select to_jsonb(p) from precio_diario p where p.id = v_precio),
    'cerrada_automaticamente',
      case when v_anterior.id is null then null else jsonb_build_object(
        'numero', v_anterior.numero, 'cuadre', v_cuadre) end
  );
end $$;


ALTER FUNCTION public.abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text) OWNER TO postgres;

--
-- Name: ampliar_prestamo(uuid, numeric, text, uuid, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text DEFAULT NULL::text, p_desembolso_id uuid DEFAULT NULL::uuid, p_nuevo_vencimiento date DEFAULT NULL::date) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $_$
declare
  v_p       public.prestamo%rowtype;
  v_usuario uuid;
  v_dias    integer;
  v_meses   numeric;
  v_interes numeric(14,2) := 0;
  v_limite  numeric;
  v_venc    date;
  v_id      uuid;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede ampliar un préstamo.';
  end if;

  if p_desembolso_id is not null
     and exists (select 1 from desembolso_prestamo where id = p_desembolso_id) then
    return json_build_object('desembolso_id', p_desembolso_id, 'duplicado', true);
  end if;

  if p_monto is null or p_monto <= 0 then
    raise exception 'El monto de la ampliación debe ser mayor que 0.';
  end if;

  v_usuario := usuario_actual();

  select * into v_p from prestamo where id = p_prestamo_id for update;
  if not found then raise exception 'El préstamo no existe.'; end if;

  if v_p.estado in ('pagado', 'cancelado') then
    raise exception 'No se puede ampliar un préstamo %.', v_p.estado;
  end if;

  if v_p.modalidad_pago = 'cuotas' then
    raise exception 'Este préstamo es por cuotas. Ampliarlo desarmaría el cronograma — registrá un préstamo nuevo.';
  end if;

  -- Solo frena si el límite se pudo calcular. Un 0 significa "sin datos de
  -- finca", no "límite cero": bloquear ahí dejaría al dueño sin poder ampliarle
  -- a gente a la que ya le prestó, por una ficha que nadie cargó.
  v_limite := calcular_limite_credito(v_p.proveedor_id);
  if v_limite is not null and v_limite > 0 and p_monto > v_limite then
    raise exception 'La ampliación de RD$ % supera el límite disponible de este proveedor (RD$ %).',
      to_char(p_monto,  'FM999999990.00'),
      to_char(v_limite, 'FM999999990.00');
  end if;

  v_venc := coalesce(p_nuevo_vencimiento, v_p.fecha_vencimiento);

  if v_p.tipo_interes <> 'exento' and v_p.tasa_interes_pct > 0 and v_venc is not null then
    v_dias  := greatest(0, v_venc - hoy_rd());
    v_meses := v_dias / 30.0;
    v_interes := round(p_monto * (v_p.tasa_interes_pct / 100) * v_meses, 2);
  end if;

  insert into desembolso_prestamo (
    id, prestamo_id, monto, interes_generado, dias_restantes,
    registrado_por, nota, inicial
  ) values (
    coalesce(p_desembolso_id, gen_random_uuid()), p_prestamo_id, p_monto, v_interes, v_dias,
    v_usuario, p_nota, false
  ) returning id into v_id;

  update prestamo set
    monto_principal   = monto_principal   + p_monto,
    saldo_capital     = saldo_capital     + p_monto,
    interes_acumulado = interes_acumulado + v_interes,
    fecha_vencimiento = v_venc,
    estado            = case when estado = 'pagado' then 'activo' else estado end
  where id = p_prestamo_id;

  return json_build_object(
    'desembolso_id',  v_id,
    'monto',          p_monto,
    'interes',        v_interes,
    'dias_restantes', v_dias,
    'limite_usado',   v_limite,
    'deuda_total',    (select saldo_capital + interes_acumulado + mora_acumulada
                         from prestamo where id = p_prestamo_id),
    'duplicado',      false
  );
end $_$;


ALTER FUNCTION public.ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text, p_desembolso_id uuid, p_nuevo_vencimiento date) OWNER TO postgres;

--
-- Name: anular_compra(uuid, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.anular_compra(p_compra_id uuid, p_motivo text) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_c      public.compra%rowtype;
  v_abonos integer;
  v_j      public.jornada%rowtype;
  v_aviso  text := null;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede anular una compra.';
  end if;

  if p_motivo is null or length(trim(p_motivo)) < 5 then
    raise exception 'La anulación requiere un motivo de al menos 5 caracteres.';
  end if;

  select * into v_c from compra where id = p_compra_id for update;
  if not found then raise exception 'La compra no existe.'; end if;

  if v_c.anulada then
    return json_build_object('compra_id', p_compra_id, 'ya_estaba_anulada', true);
  end if;

  select count(*) into v_abonos from abono_proveedor where compra_id = p_compra_id;
  if v_abonos > 0 then
    raise exception 'Esta compra tiene % abono(s) registrado(s). Ya se le entregó efectivo al proveedor: hay que resolver ese dinero antes de anularla.', v_abonos;
  end if;

  -- El saldo del proveedor baja por lo que esta compra le debía. Si estaba
  -- pagada, `saldo_pagar` es 0 y no hay nada que devolver — el efectivo ya
  -- salió y eso lo refleja el cuadre de su jornada, no esta anulación.
  if v_c.saldo_pagar > 0 and v_c.proveedor_id is not null then
    update proveedor
       set saldo_pendiente = greatest(0, saldo_pendiente - v_c.saldo_pagar)
     where id = v_c.proveedor_id;
  end if;

  update compra set
    anulada          = true,
    anulada_en       = now(),
    anulada_por      = usuario_actual(),
    motivo_anulacion = trim(p_motivo)
  where id = p_compra_id;

  -- Si la jornada ya cerró, el cuadre impreso deja de coincidir. No se toca el
  -- snapshot —es el papel firmado— pero se marca para que alguien lo decida.
  if v_c.jornada_id is not null then
    select * into v_j from jornada where id = v_c.jornada_id;
    if found and v_j.estado <> 'abierta' then
      update jornada
         set nota = coalesce(nota || ' | ', '')
                 || 'Compra anulada tras el cierre el ' || to_char(now(), 'DD/MM/YYYY')
       where id = v_c.jornada_id;
      v_aviso := 'La jornada #' || v_j.numero || ' ya estaba cerrada. El cuadre impreso no cambia; si querés actualizar los totales en pantalla, usá recalcular_cuadre_jornada.';
    end if;
  end if;

  return json_build_object(
    'compra_id',         p_compra_id,
    'saldo_revertido',   v_c.saldo_pagar,
    'kg_revertidos',     v_c.cantidad_kg,
    'aviso',             v_aviso,
    'ya_estaba_anulada', false
  );
end $$;


ALTER FUNCTION public.anular_compra(p_compra_id uuid, p_motivo text) OWNER TO postgres;

--
-- Name: anular_prestamo(uuid, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.anular_prestamo(p_prestamo_id uuid, p_motivo text) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_p     public.prestamo%rowtype;
  v_pagos integer;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede anular un préstamo.';
  end if;

  if p_motivo is null or length(trim(p_motivo)) < 5 then
    raise exception 'La anulación requiere un motivo de al menos 5 caracteres.';
  end if;

  select * into v_p from prestamo where id = p_prestamo_id for update;
  if not found then raise exception 'El préstamo no existe.'; end if;

  if v_p.estado = 'cancelado' then
    -- Idempotente: dos toques al botón no deben dar error sobre algo ya hecho.
    return json_build_object('prestamo_id', p_prestamo_id, 'ya_estaba_anulado', true);
  end if;

  if v_p.estado = 'pagado' then
    raise exception 'Este préstamo ya está pagado. No se puede anular.';
  end if;

  select count(*) into v_pagos from pago_prestamo where prestamo_id = p_prestamo_id;
  if v_pagos > 0 then
    raise exception 'Este préstamo tiene % pago(s) registrado(s). Anularlo borraría de la historia cobros que sí ocurrieron.', v_pagos;
  end if;

  update prestamo set
    estado            = 'cancelado',
    saldo_capital     = 0,
    interes_acumulado = 0,
    mora_acumulada    = 0,
    anulado_en        = now(),
    anulado_por       = usuario_actual(),
    motivo_anulacion  = trim(p_motivo)
  where id = p_prestamo_id;

  -- El scoring no puede castigar a alguien por un error de carga: se recalculan
  -- las moras activas sin el préstamo anulado.
  update scoring_proveedor
     set moras_activas = (select count(*) from prestamo
                           where proveedor_id = v_p.proveedor_id
                             and mora_acumulada > 0
                             and estado not in ('pagado', 'cancelado')),
         updated_at    = now()
   where proveedor_id = v_p.proveedor_id;

  perform recalcular_categoria_scoring(v_p.proveedor_id);

  return json_build_object(
    'prestamo_id',       p_prestamo_id,
    'monto_revertido',   v_p.saldo_capital,
    'ya_estaba_anulado', false
  );
end $$;


ALTER FUNCTION public.anular_prestamo(p_prestamo_id uuid, p_motivo text) OWNER TO postgres;

--
-- Name: aplicar_cobro_importadora(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.aplicar_cobro_importadora() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
  v_total   numeric(16,2);
  v_cobrado numeric(16,2);
begin
  -- Bloquea la fila de la venta para evitar condiciones de carrera
  select total into v_total
  from venta_importadora
  where id = new.venta_id
  for update;

  if v_total is null then
    raise exception 'La venta % no existe', new.venta_id;
  end if;

  select coalesce(sum(monto), 0) into v_cobrado
  from cobro_importadora
  where venta_id = new.venta_id;

  if v_cobrado > v_total then
    raise exception 'El cobro excede el saldo de la venta (cobrado % > total %)',
      v_cobrado, v_total;
  end if;

  update venta_importadora
  set monto_cobrado = v_cobrado,
      saldo_cobrar  = v_total - v_cobrado,
      estado_cobro  = case
                        when v_cobrado <= 0      then 'pendiente'::estado_cobro
                        when v_cobrado >= v_total then 'cobrado'::estado_cobro
                        else 'parcial'::estado_cobro
                      end
  where id = new.venta_id;

  return new;
end $$;


ALTER FUNCTION public.aplicar_cobro_importadora() OWNER TO postgres;

--
-- Name: aplicar_interes_desembolso(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.aplicar_interes_desembolso() RETURNS trigger
    LANGUAGE plpgsql
    SET search_path TO 'public'
    AS $$
declare
  v_meses   numeric;
  v_n       numeric;
  v_tasa    numeric;
  v_interes numeric(14,2) := 0;
begin
  -- Un préstamo que ya nace con interés (carga manual, migración) no se toca.
  if coalesce(new.interes_acumulado, 0) > 0 then return new; end if;

  v_tasa := coalesce(new.tasa_interes_pct, 0) / 100;
  if new.tipo_interes = 'exento' or v_tasa = 0 then return new; end if;

  if new.tipo_interes = 'simple' then
    -- Interés simple sobre el plazo completo. Misma fórmula que el cronograma
    -- de cuotas y que `totalProyectado()` del frontend: los tres tienen que dar
    -- el mismo número o el papel y la pantalla se contradicen.
    v_meses   := coalesce(new.plazo_meses, new.num_cuotas, 0);
    v_interes := round(new.monto_principal * v_tasa * v_meses, 2);
  else
    -- Saldo insoluto: el interés baja con el capital. La suma de la serie
    -- equivale a principal × tasa × (n+1)/2.
    v_n       := coalesce(new.num_cuotas, new.plazo_meses, 1);
    v_interes := round(new.monto_principal * v_tasa * ((v_n + 1) / 2), 2);
  end if;

  new.interes_acumulado := v_interes;
  return new;
end $$;


ALTER FUNCTION public.aplicar_interes_desembolso() OWNER TO postgres;

--
-- Name: calcular_cuadre_jornada(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_cuadre_jornada(p_jornada_id uuid) RETURNS jsonb
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  with c as (
    select * from compra
     where jornada_id = p_jornada_id and anulada = false
  ),
  a as (
    select coalesce(sum(monto), 0) as total
      from abono_proveedor where jornada_id = p_jornada_id
  ),
  -- Cobros de préstamo de la jornada: efectivo que ENTRA a la caja. Se cuenta
  -- por `fecha` (el momento real del cobro) y no por cuándo sincronizó, para que
  -- un cobro hecho sin señal caiga en la jornada en la que ocurrió.
  cp as (
    select coalesce(sum(pp.monto_total), 0) as total
      from pago_prestamo pp
      join jornada j on j.id = p_jornada_id
     where pp.fecha >= j.abierta_en
       and pp.fecha <  coalesce(j.cerrada_en, 'infinity'::timestamptz)
  ),
  v as (
    select coalesce(jsonb_agg(x), '[]'::jsonb) as detalle from (
      select ve.nombre                                   as vendedor,
             count(*)                                    as compras,
             coalesce(sum(c.cantidad_kg), 0)             as kg,
             coalesce(sum(c.total), 0)                   as rd,
             coalesce(sum(c.monto_pagado), 0)            as pagado,
             coalesce(sum(c.saldo_pagar), 0)             as deuda
        from c join vendedor ve on ve.id = c.vendedor_id
       group by ve.nombre order by ve.nombre
    ) x
  )
  select jsonb_build_object(
    'compras_count',   (select count(*) from c),
    'kg_seco',         (select coalesce(sum(cantidad_kg) filter (where tipo_cacao = 'seco'), 0) from c),
    'kg_baba',         (select coalesce(sum(cantidad_kg) filter (where tipo_cacao = 'baba'), 0) from c),
    'rd_seco',         (select coalesce(sum(total)       filter (where tipo_cacao = 'seco'), 0) from c),
    'rd_baba',         (select coalesce(sum(total)       filter (where tipo_cacao = 'baba'), 0) from c),
    'rd_total',        (select coalesce(sum(total), 0) from c),
    'pagado_efectivo', (select coalesce(sum(monto_pagado), 0) from c),
    'deuda_generada',  (select coalesce(sum(saldo_pagar), 0) from c),
    -- Nombre conservado por compatibilidad con las jornadas ya cerradas, pero
    -- es plata PAGADA a proveedores, no cobrada. En la UI se rotula como sale.
    'abonos_cobrados', (select total from a),
    'cobros_prestamo', (select total from cp),
    'llegaron_tarde',  (select count(*) from c where llego_tarde),
    'detalle_vendedores', (select detalle from v)
  );
$$;


ALTER FUNCTION public.calcular_cuadre_jornada(p_jornada_id uuid) OWNER TO postgres;

--
-- Name: calcular_interes_prestamo(uuid, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date DEFAULT CURRENT_DATE) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare
  v_prestamo prestamo%rowtype;
  v_dias     integer;
  v_meses    numeric;
  v_interes  numeric;
begin
  select * into v_prestamo from prestamo where id = p_prestamo_id;
  
  if v_prestamo.tipo_interes = 'exento' or v_prestamo.tasa_interes_pct = 0 then
    return 0;
  end if;
  
  v_dias   := p_fecha - v_prestamo.fecha_desembolso;
  v_meses  := v_dias / 30.0;
  
  if v_prestamo.tipo_interes = 'simple' then
    v_interes := v_prestamo.monto_principal 
      * (v_prestamo.tasa_interes_pct / 100) 
      * v_meses;
  else -- saldo_insoluto
    v_interes := v_prestamo.saldo_capital 
      * (v_prestamo.tasa_interes_pct / 100) 
      * v_meses;
  end if;
  
  return round(v_interes, 2);
end;
$$;


ALTER FUNCTION public.calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date) OWNER TO postgres;

--
-- Name: calcular_limite_credito(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_limite_credito(p_proveedor_id uuid) RETURNS numeric
    LANGUAGE plpgsql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_f      public.finca_proveedor%rowtype;
  v_cat    public.categoria_scoring;
  v_bruto  numeric(14,2);
  v_ajuste numeric(4,2);
  v_deuda  numeric(14,2);
begin
  select * into v_f from public.finca_proveedor where proveedor_id = p_proveedor_id;

  -- Sin datos de finca no hay base objetiva para prestar: 0, no un default.
  -- Ojo: 0 significa "no puedo estimar", no "no le prestes". Quien decide
  -- ampliar ve el aviso de que se estaría prestando a ciegas.
  if not found or v_f.quintales_estimados_anio is null then
    return 0;
  end if;

  v_bruto := coalesce(v_f.quintales_estimados_anio, 0)
           * coalesce(v_f.precio_referencia_qq, 0)
           * coalesce(v_f.factor_riesgo, 0.5);

  select categoria into v_cat from public.scoring_proveedor where proveedor_id = p_proveedor_id;
  v_ajuste := case coalesce(v_cat, 'B') when 'A' then 1.00 when 'B' then 0.80 else 0.50 end;

  select coalesce(sum(saldo_capital + interes_acumulado + mora_acumulada), 0)
    into v_deuda
    from public.prestamo
   where proveedor_id = p_proveedor_id and estado not in ('pagado', 'cancelado');

  return greatest(0, round(v_bruto * v_ajuste, 2) - v_deuda);
end $$;


ALTER FUNCTION public.calcular_limite_credito(p_proveedor_id uuid) OWNER TO postgres;

--
-- Name: cambiar_precio_jornada(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric) RETURNS jsonb
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_usuario  uuid;
  v_jornada  uuid;
  v_precio   uuid;
  v_ant_seco numeric;
  v_ant_baba numeric;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede cambiar el precio.';
  end if;
  if p_precio_seco is null or p_precio_seco <= 0 or p_precio_baba is null or p_precio_baba <= 0 then
    raise exception 'Ambos precios deben ser mayores que 0.';
  end if;

  select id into v_jornada from jornada where estado = 'abierta' limit 1;
  if v_jornada is null then
    raise exception 'No hay jornada abierta. Abrí la jornada antes de cambiar el precio.';
  end if;

  v_usuario := usuario_actual();

  select precio_quintal_seco, precio_quintal_baba into v_ant_seco, v_ant_baba
    from precio_diario where jornada_id = v_jornada
    order by vigente_desde desc limit 1;

  insert into precio_diario (
    fecha, precio_quintal_seco, precio_quintal_baba,
    precio_anterior, precio_anterior_baba,
    hora_cambio, vigente_desde, fijado_por, jornada_id, precio_baba_calculado
  ) values (
    hoy_rd(), p_precio_seco, p_precio_baba,
    v_ant_seco, v_ant_baba,
    (now() at time zone 'America/Santo_Domingo')::time, now(), v_usuario, v_jornada, false
  ) returning id into v_precio;

  return (select to_jsonb(p) from precio_diario p where p.id = v_precio);
end $$;


ALTER FUNCTION public.cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric) OWNER TO postgres;

--
-- Name: cambiar_tasa_prestamo(uuid, numeric, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_p       public.prestamo%rowtype;
  v_meses   numeric;
  v_interes numeric(14,2) := 0;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede cambiar la tasa de un préstamo.';
  end if;

  if p_motivo is null or length(trim(p_motivo)) < 5 then
    raise exception 'El cambio de tasa requiere un motivo de al menos 5 caracteres.';
  end if;

  select * into v_p from prestamo where id = p_prestamo_id for update;
  if not found then raise exception 'El préstamo no existe.'; end if;

  if v_p.estado in ('pagado', 'cancelado') then
    raise exception 'No se puede cambiar la tasa de un préstamo %.', v_p.estado;
  end if;

  -- Meses que FALTAN, no el plazo original.
  v_meses := greatest(0,
    case when v_p.fecha_vencimiento is null then 0
         else (v_p.fecha_vencimiento - hoy_rd())::numeric / 30
    end);

  if p_tipo <> 'exento' and p_tasa > 0 and v_meses > 0 then
    v_interes := round(v_p.saldo_capital * (p_tasa / 100) * v_meses, 2);
  end if;

  update prestamo set
    tasa_interes_pct  = p_tasa,
    tipo_interes      = p_tipo::tipo_interes,
    interes_acumulado = interes_acumulado + v_interes
  where id = p_prestamo_id;

  insert into cambio_tasa_prestamo (
    prestamo_id, tasa_anterior, tasa_nueva, tipo_anterior, tipo_nuevo,
    interes_agregado, motivo, cambiado_por
  ) values (
    p_prestamo_id, v_p.tasa_interes_pct, p_tasa, v_p.tipo_interes, p_tipo::tipo_interes,
    v_interes, trim(p_motivo), usuario_actual()
  );

  return json_build_object(
    'prestamo_id',      p_prestamo_id,
    'interes_agregado', v_interes,
    'meses_restantes',  round(v_meses, 2),
    'deuda_total',      (select saldo_capital + interes_acumulado + mora_acumulada
                           from prestamo where id = p_prestamo_id)
  );
end $$;


ALTER FUNCTION public.cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text) OWNER TO postgres;

--
-- Name: cerrar_jornada(uuid, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.cerrar_jornada(p_jornada_id uuid DEFAULT NULL::uuid, p_nota text DEFAULT NULL::text) RETURNS jsonb
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_usuario uuid;
  v_j       jornada%rowtype;
  v_cuadre  jsonb;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede cerrar la jornada.';
  end if;

  if p_jornada_id is null then
    select * into v_j from jornada where estado = 'abierta' limit 1;
  else
    select * into v_j from jornada where id = p_jornada_id;
  end if;

  if not found then
    raise exception 'No hay jornada abierta para cerrar.';
  end if;

  -- Idempotente: el admin toca dos veces el botón en una tablet con 2G y no
  -- debe recalcular ni pisar el cuadre que ya se imprimió.
  if v_j.estado <> 'abierta' then
    return jsonb_build_object(
      'jornada', to_jsonb(v_j) - 'detalle_vendedores',
      'cuadre',  calcular_cuadre_jornada(v_j.id),
      'ya_estaba_cerrada', true
    );
  end if;

  v_usuario := usuario_actual();
  v_cuadre  := calcular_cuadre_jornada(v_j.id);

  update jornada set
    estado              = 'cerrada',
    cerrada_en          = now(),
    cerrada_por         = v_usuario,
    nota                = coalesce(p_nota, nota),
    compras_count       = (v_cuadre->>'compras_count')::int,
    kg_seco             = (v_cuadre->>'kg_seco')::numeric,
    kg_baba             = (v_cuadre->>'kg_baba')::numeric,
    rd_seco             = (v_cuadre->>'rd_seco')::numeric,
    rd_baba             = (v_cuadre->>'rd_baba')::numeric,
    rd_total            = (v_cuadre->>'rd_total')::numeric,
    pagado_efectivo     = (v_cuadre->>'pagado_efectivo')::numeric,
    deuda_generada      = (v_cuadre->>'deuda_generada')::numeric,
    abonos_cobrados     = (v_cuadre->>'abonos_cobrados')::numeric,
    cobros_prestamo     = (v_cuadre->>'cobros_prestamo')::numeric,
    detalle_vendedores  = v_cuadre->'detalle_vendedores',
    cuadre_calculado_en = now()
  where id = v_j.id;

  return jsonb_build_object(
    'jornada', (select to_jsonb(j) - 'detalle_vendedores' from jornada j where j.id = v_j.id),
    'cuadre',  v_cuadre,
    'ya_estaba_cerrada', false
  );
end $$;


ALTER FUNCTION public.cerrar_jornada(p_jornada_id uuid, p_nota text) OWNER TO postgres;

--
-- Name: condonar_mora(uuid, numeric, text, uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid) RETURNS void
    LANGUAGE plpgsql
    AS $_$
declare
  v_mora_actual numeric;
begin
  select mora_acumulada into v_mora_actual
  from prestamo where id = p_prestamo_id for update;
  
  if not found then
    raise exception 'Préstamo no encontrado';
  end if;
  
  if p_monto > v_mora_actual then
    raise exception 'No puede condonar más de la mora acumulada (RD$ %)', v_mora_actual;
  end if;
  
  -- Reducir mora
  update prestamo 
  set mora_acumulada = mora_acumulada - p_monto
  where id = p_prestamo_id;
  
  -- Registrar en auditoría
  insert into condonacion_mora 
    (prestamo_id, monto_condonado, motivo, autorizado_por)
  values 
    (p_prestamo_id, p_monto, p_motivo, p_autorizado_por);
  
  -- Recalcular scoring del agricultor
  perform recalcular_scoring(
    (select proveedor_id from prestamo where id = p_prestamo_id)
  );
end;
$_$;


ALTER FUNCTION public.condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid) OWNER TO postgres;

--
-- Name: crear_desembolso_inicial(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.crear_desembolso_inicial() RETURNS trigger
    LANGUAGE plpgsql
    SET search_path TO 'public'
    AS $$
begin
  insert into desembolso_prestamo (
    prestamo_id, monto, fecha, registrado_por, inicial, nota
  ) values (
    new.id,
    new.monto_principal,
    coalesce(new.fecha_desembolso::timestamptz, now()),
    new.registrado_por,
    true,
    'Desembolso inicial'
  );
  return new;
end $$;


ALTER FUNCTION public.crear_desembolso_inicial() OWNER TO postgres;

--
-- Name: decrementar_saldo_proveedor(uuid, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
begin
  update proveedor
  set saldo_pendiente = greatest(0, saldo_pendiente - p_monto)
  where id = p_proveedor_id;
end;
$$;


ALTER FUNCTION public.decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) OWNER TO postgres;

--
-- Name: devengar_mora(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.devengar_mora() RETURNS integer
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_pct    numeric;
  v_tipo   text;
  v_dias   integer;
  v_afect  integer := 0;
  r        record;
  v_mora   numeric(14,2);
begin
  select valor into v_tipo from public.config_sistema where clave = 'prestamo_mora_tipo';
  select valor into v_pct  from public.config_sistema where clave = 'prestamo_mora_pct';
  v_tipo := coalesce(v_tipo, 'porcentaje_mensual');
  v_pct  := coalesce(v_pct::numeric, 0);

  if v_tipo = 'sin_mora' or v_pct <= 0 then return 0; end if;

  for r in
    select id, saldo_capital, fecha_vencimiento
      from public.prestamo
     where estado not in ('pagado', 'cancelado')
       and fecha_vencimiento is not null
       and fecha_vencimiento < public.hoy_rd()
       and saldo_capital > 0
  loop
    v_dias := public.hoy_rd() - r.fecha_vencimiento;

    if v_tipo = 'cargo_fijo' then
      v_mora := v_pct;                                    -- monto fijo por día
    else
      v_mora := round(r.saldo_capital * (v_pct / 100) / 30, 2);   -- prorrateo diario
    end if;

    -- Solo el día de hoy: si ya se devengó hoy, no vuelve a sumar.
    update public.prestamo
       set mora_acumulada = mora_acumulada + v_mora,
           estado = 'en_mora'
     where id = r.id
       and not exists (
         select 1 from public.pago_prestamo
          where prestamo_id = r.id and fecha::date = public.hoy_rd() and tipo = 'abono'
       );

    v_afect := v_afect + 1;
  end loop;

  return v_afect;
end $$;


ALTER FUNCTION public.devengar_mora() OWNER TO postgres;

--
-- Name: enforce_ocasional_sin_deuda(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.enforce_ocasional_sin_deuda() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
  v_tipo text;
begin
  if new.proveedor_id is null then
    if coalesce(new.saldo_pagar, 0) > 0 then
      raise exception 'Una compra sin proveedor no puede quedar a crédito (saldo pendiente).';
    end if;
  else
    select tipo into v_tipo from proveedor where id = new.proveedor_id;
    if v_tipo = 'ocasional' and coalesce(new.saldo_pagar, 0) > 0 then
      raise exception 'Un proveedor ocasional no puede tener saldo pendiente.';
    end if;
  end if;
  return new;
end $$;


ALTER FUNCTION public.enforce_ocasional_sin_deuda() OWNER TO postgres;

--
-- Name: enforce_prestamo_solo_registrado(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.enforce_prestamo_solo_registrado() RETURNS trigger
    LANGUAGE plpgsql
    SET search_path TO 'public'
    AS $$
declare
  v_tipo   tipo_proveedor;
  v_cedula text;
  v_nombre text;
begin
  select tipo, cedula, nombre into v_tipo, v_cedula, v_nombre
    from public.proveedor where id = new.proveedor_id;

  if not found then
    raise exception 'El proveedor del préstamo no existe.';
  end if;

  if v_tipo = 'ocasional' then
    raise exception
      '% es un proveedor ocasional y no puede recibir préstamos. Regístrelo con cédula primero.',
      v_nombre;
  end if;

  -- La cédula es el único respaldo real de la deuda.
  if v_cedula is null or length(trim(v_cedula)) = 0 then
    raise exception 'No se puede prestar a % sin cédula registrada.', v_nombre;
  end if;

  return new;
end $$;


ALTER FUNCTION public.enforce_prestamo_solo_registrado() OWNER TO postgres;

--
-- Name: es_admin(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.es_admin() RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  select exists (
    select 1 from usuario
    where auth_user_id = auth.uid()
      and rol = 'admin'
      and activo = true
  );
$$;


ALTER FUNCTION public.es_admin() OWNER TO postgres;

--
-- Name: hoy_rd(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hoy_rd() RETURNS date
    LANGUAGE sql STABLE
    AS $$
  select (now() at time zone 'America/Santo_Domingo')::date;
$$;


ALTER FUNCTION public.hoy_rd() OWNER TO postgres;

--
-- Name: incrementar_saldo_proveedor(uuid, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
begin
  update proveedor
  set saldo_pendiente = saldo_pendiente + p_monto
  where id = p_proveedor_id
    and tipo = 'registrado';
end;
$$;


ALTER FUNCTION public.incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) OWNER TO postgres;

--
-- Name: init_venta_importadora(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.init_venta_importadora() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
  new.monto_cobrado := coalesce(new.monto_cobrado, 0);
  new.saldo_cobrar  := (new.volumen_kg * new.precio_venta) - new.monto_cobrado;
  new.estado_cobro  := case
                         when new.monto_cobrado <= 0 then 'pendiente'::estado_cobro
                         else 'parcial'::estado_cobro
                       end;
  -- Mantener la columna legacy `empresa` poblada desde la importadora
  if new.importadora_id is not null and (new.empresa is null or new.empresa = '') then
    select nombre into new.empresa from importadora where id = new.importadora_id;
  end if;
  return new;
end $$;


ALTER FUNCTION public.init_venta_importadora() OWNER TO postgres;

--
-- Name: jornada_abierta(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.jornada_abierta() RETURNS jsonb
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  select case when j.id is null then null else jsonb_build_object(
    'jornada', to_jsonb(j) - 'detalle_vendedores',
    'precio',  to_jsonb(p)
  ) end
  from (select * from jornada where estado = 'abierta' limit 1) j
  left join lateral (
    select * from precio_diario
     where jornada_id = j.id
     order by vigente_desde desc
     limit 1
  ) p on true;
$$;


ALTER FUNCTION public.jornada_abierta() OWNER TO postgres;

--
-- Name: mis_permisos(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.mis_permisos() RETURNS jsonb
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  select jsonb_build_object(
    'es_admin', public.es_admin(),
    'permisos', coalesce(
      (select jsonb_agg(permiso order by permiso)
         from public.permiso_usuario
        where usuario_id = public.usuario_actual()),
      '[]'::jsonb)
  );
$$;


ALTER FUNCTION public.mis_permisos() OWNER TO postgres;

--
-- Name: otorgar_permiso(uuid, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.otorgar_permiso(p_usuario_id uuid, p_permiso text) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede otorgar permisos.';
  end if;
  if p_permiso is null or length(trim(p_permiso)) = 0 then
    raise exception 'El permiso no puede estar vacío.';
  end if;

  insert into permiso_usuario (usuario_id, permiso, otorgado_por)
  values (p_usuario_id, trim(p_permiso), usuario_actual())
  on conflict (usuario_id, permiso) do nothing;
end $$;


ALTER FUNCTION public.otorgar_permiso(p_usuario_id uuid, p_permiso text) OWNER TO postgres;

--
-- Name: recalcular_categoria_scoring(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.recalcular_categoria_scoring(p_proveedor_id uuid) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare s public.scoring_proveedor%rowtype;
begin
  select * into s from public.scoring_proveedor where proveedor_id = p_proveedor_id;
  if not found then return; end if;

  update public.scoring_proveedor
     set categoria = case
           when s.moras_activas > 0 or s.pagos_tardios > s.pagos_puntuales then 'C'
           when s.pagos_tardios = 0 and s.pagos_puntuales >= 3             then 'A'
           else 'B'
         end,
         updated_at = now()
   where proveedor_id = p_proveedor_id;
end $$;


ALTER FUNCTION public.recalcular_categoria_scoring(p_proveedor_id uuid) OWNER TO postgres;

--
-- Name: recalcular_cuadre_jornada(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.recalcular_cuadre_jornada(p_jornada_id uuid) RETURNS jsonb
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare v_cuadre jsonb;
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede recalcular un cuadre.';
  end if;

  v_cuadre := calcular_cuadre_jornada(p_jornada_id);

  update jornada set
    compras_count      = (v_cuadre->>'compras_count')::int,
    kg_seco            = (v_cuadre->>'kg_seco')::numeric,
    kg_baba            = (v_cuadre->>'kg_baba')::numeric,
    rd_seco            = (v_cuadre->>'rd_seco')::numeric,
    rd_baba            = (v_cuadre->>'rd_baba')::numeric,
    rd_total           = (v_cuadre->>'rd_total')::numeric,
    pagado_efectivo    = (v_cuadre->>'pagado_efectivo')::numeric,
    deuda_generada     = (v_cuadre->>'deuda_generada')::numeric,
    abonos_cobrados    = (v_cuadre->>'abonos_cobrados')::numeric,
    detalle_vendedores = v_cuadre->'detalle_vendedores',
    recalculado_en     = now(),
    recalculado_por    = usuario_actual()
  where id = p_jornada_id;

  return v_cuadre;
end $$;


ALTER FUNCTION public.recalcular_cuadre_jornada(p_jornada_id uuid) OWNER TO postgres;

--
-- Name: recalcular_scoring(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.recalcular_scoring(p_proveedor_id uuid) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
  v_puntuales  integer;
  v_tardios    integer;
  v_moras      integer;
  v_condonadas integer;
  v_categoria  categoria_scoring;
begin
  select 
    count(*) filter (where fecha <= p.fecha_vencimiento),
    count(*) filter (where fecha > p.fecha_vencimiento),
    count(*) filter (where pr.mora_acumulada > 0),
    count(distinct cm.prestamo_id)
  into v_puntuales, v_tardios, v_moras, v_condonadas
  from pago_prestamo p
  join prestamo pr on p.prestamo_id = pr.id
  left join condonacion_mora cm on cm.prestamo_id = pr.id
  where pr.proveedor_id = p_proveedor_id;

  v_categoria := case
    when v_tardios = 0 and v_moras = 0 then 'A'
    when v_tardios <= 2 and v_condonadas <= 1 then 'B'
    else 'C'
  end;

  insert into scoring_proveedor 
    (proveedor_id, categoria, pagos_puntuales, pagos_tardios, 
     moras_activas, moras_condonadas)
  values 
    (p_proveedor_id, v_categoria, v_puntuales, v_tardios, 
     v_moras, v_condonadas)
  on conflict (proveedor_id) do update set
    categoria        = excluded.categoria,
    pagos_puntuales  = excluded.pagos_puntuales,
    pagos_tardios    = excluded.pagos_tardios,
    moras_activas    = excluded.moras_activas,
    moras_condonadas = excluded.moras_condonadas,
    updated_at       = now();
end;
$$;


ALTER FUNCTION public.recalcular_scoring(p_proveedor_id uuid) OWNER TO postgres;

--
-- Name: registrar_abono(uuid, numeric, text, uuid, uuid, uuid, text, timestamp with time zone); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid DEFAULT NULL::uuid, p_jornada_id uuid DEFAULT NULL::uuid, p_nota text DEFAULT NULL::text, p_fecha timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $_$
declare
  v_c            public.compra%rowtype;
  v_pagado_nuevo numeric(14,2);
  v_saldo_nuevo  numeric(14,2);
  v_estado       text;
  v_abono_id     uuid;
begin
  -- Idempotencia primero: un reintento no debe volver a descontar.
  if p_abono_id is not null and exists (select 1 from abono_proveedor where id = p_abono_id) then
    return json_build_object('abono_id', p_abono_id, 'duplicado', true);
  end if;

  if p_monto is null or p_monto <= 0 then
    raise exception 'El monto del abono debe ser mayor que 0.';
  end if;

  select * into v_c from compra where id = p_compra_id for update;
  if not found then raise exception 'La compra no existe.'; end if;

  v_pagado_nuevo := round(v_c.monto_pagado + p_monto, 2);
  v_saldo_nuevo  := round(v_c.total - v_pagado_nuevo, 2);

  if v_saldo_nuevo < 0 then
    raise exception 'El abono supera el saldo pendiente de la compra (RD$ %).',
      to_char(v_c.saldo_pagar, 'FM999999990.00');
  end if;

  v_estado := case
                when v_saldo_nuevo = 0  then 'pagado'
                when v_pagado_nuevo > 0 then 'parcial'
                else 'pendiente'
              end;

  insert into abono_proveedor (
    id, compra_id, proveedor_id, monto, metodo_pago, registrado_por, nota, fecha, jornada_id
  ) values (
    coalesce(p_abono_id, gen_random_uuid()), p_compra_id, v_c.proveedor_id, p_monto,
    p_metodo::metodo_pago, p_registrado_por, p_nota, coalesce(p_fecha, now()), p_jornada_id
  ) returning id into v_abono_id;

  -- Las dos caras del mismo hecho, en la misma transacción: si solo se moviera
  -- una, el saldo del proveedor y el de la compra quedarían discrepando.
  update compra set
    monto_pagado = v_pagado_nuevo,
    saldo_pagar  = v_saldo_nuevo,
    estado_pago  = v_estado::estado_pago
  where id = p_compra_id;

  update proveedor
     set saldo_pendiente = greatest(0, saldo_pendiente - p_monto)
   where id = v_c.proveedor_id;

  return json_build_object(
    'abono_id',    v_abono_id,
    'saldo_nuevo', v_saldo_nuevo,
    'estado_pago', v_estado,
    'duplicado',   false
  );
end $_$;


ALTER FUNCTION public.registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid, p_jornada_id uuid, p_nota text, p_fecha timestamp with time zone) OWNER TO postgres;

--
-- Name: registrar_compensacion_compra(uuid, uuid, numeric, uuid, uuid, uuid, timestamp with time zone, uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid DEFAULT NULL::uuid, p_abono_id uuid DEFAULT NULL::uuid, p_fecha timestamp with time zone DEFAULT NULL::timestamp with time zone, p_jornada_id uuid DEFAULT NULL::uuid) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  v_pago  json;
  v_abono json;
begin
  if not tiene_permiso('prestamo.cobrar') then
    raise exception 'No tenés permiso para aplicar abonos a créditos.';
  end if;

  -- Orden deliberado: primero el préstamo. Si el pago se rechaza, la excepción
  -- aborta la transacción entera y el abono nunca ocurre — la compra conserva
  -- su saldo a favor del campesino.
  v_pago := registrar_pago_prestamo(
    p_prestamo_id, p_monto, 'efectivo', p_registrado_por,
    'Descontado de la compra', null, p_fecha, p_pago_id
  );

  v_abono := registrar_abono(
    p_compra_id, p_monto, 'efectivo', p_registrado_por,
    p_abono_id, p_jornada_id, 'Aplicado al credito', p_fecha
  );

  return json_build_object(
    'pago',  v_pago,
    'abono', v_abono
  );
end $$;


ALTER FUNCTION public.registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid, p_abono_id uuid, p_fecha timestamp with time zone, p_jornada_id uuid) OWNER TO postgres;

--
-- Name: registrar_pago_prestamo(uuid, numeric, text, uuid, text, text, timestamp with time zone); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text DEFAULT 'efectivo'::text, p_registrado_por uuid DEFAULT NULL::uuid, p_nota text DEFAULT NULL::text, p_referencia text DEFAULT NULL::text, p_fecha timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS json
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $_$
declare
  v_p            public.prestamo%rowtype;
  v_usuario      uuid;
  v_restante     numeric(14,2);
  v_mora         numeric(14,2) := 0;
  v_interes      numeric(14,2) := 0;
  v_capital      numeric(14,2) := 0;
  v_tenia_mora   boolean;
  v_pago_id      uuid;
  v_tipo         public.tipo_pago_prestamo;
  v_cuota        public.cuota_prestamo%rowtype;
  v_estado       public.estado_prestamo;
  v_fecha        timestamptz;
  v_dias_atras   integer;
  v_mora_diaria  numeric(14,2);
  v_revertido    numeric(14,2) := 0;
  v_pct          numeric;
  v_tipo_mora    text;
begin
  -- Barrera real: acá no llega el guard de Angular ni la falta de un botón.
  if not tiene_permiso('prestamo.cobrar') then
    raise exception 'No tenés permiso para registrar pagos de préstamos.';
  end if;

  if p_monto is null or p_monto <= 0 then
    raise exception 'El monto del pago debe ser mayor que 0.';
  end if;

  v_usuario := coalesce(p_registrado_por, public.usuario_actual());
  if v_usuario is null then
    raise exception 'No se pudo determinar el usuario que registra el pago.';
  end if;

  -- Una fecha futura sería un reloj mal configurado; se ignora en vez de
  -- aceptar un cobro que "ocurrió" mañana.
  v_fecha := least(coalesce(p_fecha, now()), now());

  -- Bloquea la fila: serializa los pagos concurrentes sobre el mismo préstamo.
  select * into v_p from public.prestamo where id = p_prestamo_id for update;
  if not found then
    raise exception 'El préstamo no existe.';
  end if;
  if v_p.estado in ('pagado', 'cancelado') then
    raise exception 'El préstamo ya está %.', v_p.estado;
  end if;

  -- ── Reversa de mora por cobro atrasado ──
  -- `devengar_mora()` corre a diario y no sabe de cobros que siguen en un
  -- teléfono sin señal. Un pago hecho el lunes que sincroniza el viernes
  -- llegaría con cuatro días de mora que el campesino no debe: pagó a tiempo,
  -- el que no tenía señal era el vendedor. Se devuelve esa mora antes de
  -- imputar.
  v_dias_atras := greatest(0, (now() at time zone 'America/Santo_Domingo')::date
                             - (v_fecha at time zone 'America/Santo_Domingo')::date);

  if v_dias_atras > 0 and v_p.mora_acumulada > 0 then
    select valor into v_tipo_mora from config_sistema where clave = 'prestamo_mora_tipo';
    select valor into v_pct       from config_sistema where clave = 'prestamo_mora_pct';
    v_tipo_mora := coalesce(v_tipo_mora, 'porcentaje_mensual');
    v_pct       := coalesce(v_pct::numeric, 0);

    if v_pct > 0 and v_tipo_mora <> 'sin_mora' then
      -- Estimación, no reconstrucción exacta: `devengar_mora` no guarda
      -- historial por día. Es exacta salvo que el capital haya cambiado en el
      -- medio, lo que implica otro pago en esos mismos días.
      v_mora_diaria := case
                         when v_tipo_mora = 'cargo_fijo' then v_pct
                         else round(v_p.saldo_capital * (v_pct / 100) / 30, 2)
                       end;
      v_revertido := least(v_p.mora_acumulada, round(v_mora_diaria * v_dias_atras, 2));

      update prestamo set mora_acumulada = mora_acumulada - v_revertido
       where id = p_prestamo_id;

      v_p.mora_acumulada := v_p.mora_acumulada - v_revertido;
    end if;
  end if;

  v_tenia_mora := v_p.mora_acumulada > 0;
  v_restante   := round(p_monto, 2);

  -- 1) Mora
  v_mora     := least(v_restante, v_p.mora_acumulada);
  v_restante := v_restante - v_mora;

  -- 2) Interés
  v_interes  := least(v_restante, v_p.interes_acumulado);
  v_restante := v_restante - v_interes;

  -- 3) Capital
  v_capital  := least(v_restante, v_p.saldo_capital);
  v_restante := v_restante - v_capital;

  -- Un excedente sobre la deuda total es casi siempre un error de tipeo.
  if v_restante > 0 then
    raise exception 'El pago excede la deuda total en RD$ %. Deuda: RD$ %.',
      to_char(v_restante, 'FM999999990.00'),
      to_char(v_p.mora_acumulada + v_p.interes_acumulado + v_p.saldo_capital, 'FM999999990.00');
  end if;

  v_estado := case
                when (v_p.saldo_capital - v_capital) <= 0
                 and (v_p.interes_acumulado - v_interes) <= 0
                 and (v_p.mora_acumulada - v_mora) <= 0 then 'pagado'::public.estado_prestamo
                when (v_p.mora_acumulada - v_mora) > 0   then 'en_mora'::public.estado_prestamo
                else 'al_dia'::public.estado_prestamo
              end;

  v_tipo := case
              when v_estado = 'pagado' then 'cancelacion'::public.tipo_pago_prestamo
              when v_p.modalidad_pago = 'cuotas' then 'cuota'::public.tipo_pago_prestamo
              else 'abono'::public.tipo_pago_prestamo
            end;

  update public.prestamo
     set mora_acumulada    = mora_acumulada    - v_mora,
         interes_acumulado = interes_acumulado - v_interes,
         saldo_capital     = saldo_capital     - v_capital,
         total_pagado      = total_pagado      + round(p_monto, 2),
         estado            = v_estado
   where id = p_prestamo_id;

  -- Cuota más vieja pendiente: se marca si el pago la cubre completa.
  if v_p.modalidad_pago = 'cuotas' then
    select * into v_cuota
      from public.cuota_prestamo
     where prestamo_id = p_prestamo_id and pagado = false
     order by numero_cuota
     limit 1;

    if found and round(p_monto, 2) >= v_cuota.monto_total then
      update public.cuota_prestamo
         set pagado = true,
             fecha_pago = (v_fecha at time zone 'America/Santo_Domingo')::date
       where id = v_cuota.id;
    else
      v_cuota.id := null;
    end if;
  end if;

  insert into public.pago_prestamo (
    prestamo_id, cuota_id, registrado_por, monto_total,
    aplicado_mora, aplicado_interes, aplicado_capital,
    tipo, metodo_pago, referencia, nota, fecha, sincronizado_en
  ) values (
    p_prestamo_id, v_cuota.id, v_usuario, round(p_monto, 2),
    v_mora, v_interes, v_capital,
    v_tipo, p_metodo::public.metodo_pago, p_referencia, p_nota, v_fecha, now()
  ) returning id into v_pago_id;

  -- Scoring: puntual si no arrastraba mora al momento de pagar.
  insert into public.scoring_proveedor (proveedor_id) values (v_p.proveedor_id)
  on conflict (proveedor_id) do nothing;

  update public.scoring_proveedor
     set pagos_puntuales = pagos_puntuales + (case when v_tenia_mora then 0 else 1 end),
         pagos_tardios   = pagos_tardios   + (case when v_tenia_mora then 1 else 0 end),
         moras_activas   = (select count(*) from public.prestamo
                             where proveedor_id = v_p.proveedor_id and mora_acumulada > 0),
         updated_at      = now()
   where proveedor_id = v_p.proveedor_id;

  perform public.recalcular_categoria_scoring(v_p.proveedor_id);

  return json_build_object(
    'pago_id',          v_pago_id,
    'aplicado_mora',    v_mora,
    'aplicado_interes', v_interes,
    'aplicado_capital', v_capital,
    'mora_revertida',   v_revertido,
    'dias_atraso_sync', v_dias_atras,
    'saldo_nuevo',      v_p.saldo_capital - v_capital,
    'estado',           v_estado
  );
end $_$;


ALTER FUNCTION public.registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_nota text, p_referencia text, p_fecha timestamp with time zone) OWNER TO postgres;

--
-- Name: resolver_jornada_abono(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.resolver_jornada_abono() RETURNS trigger
    LANGUAGE plpgsql
    SET search_path TO 'public'
    AS $$
declare v_j uuid;
begin
  if new.jornada_id is null then
    select j.id into v_j from jornada j
     where new.fecha >= j.abierta_en
       and new.fecha <  coalesce(j.cerrada_en, 'infinity'::timestamptz)
     order by j.abierta_en desc limit 1;

    if v_j is null then
      select j.id into v_j from jornada j where j.estado = 'abierta';
    end if;

    new.jornada_id := v_j;
  end if;
  return new;
end $$;


ALTER FUNCTION public.resolver_jornada_abono() OWNER TO postgres;

--
-- Name: resolver_jornada_compra(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.resolver_jornada_compra() RETURNS trigger
    LANGUAGE plpgsql
    SET search_path TO 'public'
    AS $$
declare v_j uuid;
begin
  if new.jornada_id is null then
    -- 1) por el precio que usó — la pista más exacta
    select p.jornada_id into v_j
      from precio_diario p where p.id = new.precio_diario_id;

    -- 2) por rango sobre el momento de la compra
    if v_j is null then
      select j.id into v_j from jornada j
       where new.timestamp_local >= j.abierta_en
         and new.timestamp_local <  coalesce(j.cerrada_en, 'infinity'::timestamptz)
       order by j.abierta_en desc limit 1;
    end if;

    -- 3) la jornada abierta ahora
    if v_j is null then
      select j.id into v_j from jornada j where j.estado = 'abierta';
    end if;

    new.jornada_id := v_j;   -- puede quedar null: se acepta igual
  end if;

  -- ¿Llegó después de que su jornada cerrara? Se marca para el descuadre.
  select true into new.llego_tarde
    from jornada j
   where j.id = new.jornada_id
     and j.cerrada_en is not null
     and j.cerrada_en < now();

  new.llego_tarde := coalesce(new.llego_tarde, false);
  return new;
end $$;


ALTER FUNCTION public.resolver_jornada_compra() OWNER TO postgres;

--
-- Name: revocar_permiso(uuid, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.revocar_permiso(p_usuario_id uuid, p_permiso text) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
begin
  if not es_admin() then
    raise exception 'Solo un administrador puede revocar permisos.';
  end if;

  delete from permiso_usuario
   where usuario_id = p_usuario_id and permiso = trim(p_permiso);
end $$;


ALTER FUNCTION public.revocar_permiso(p_usuario_id uuid, p_permiso text) OWNER TO postgres;

--
-- Name: rls_auto_enable(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.rls_auto_enable() RETURNS event_trigger
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'pg_catalog'
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN
    SELECT *
    FROM pg_event_trigger_ddl_commands()
    WHERE command_tag IN ('CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO')
      AND object_type IN ('table','partitioned table')
  LOOP
     IF cmd.schema_name IS NOT NULL AND cmd.schema_name IN ('public') AND cmd.schema_name NOT IN ('pg_catalog','information_schema') AND cmd.schema_name NOT LIKE 'pg_toast%' AND cmd.schema_name NOT LIKE 'pg_temp%' THEN
      BEGIN
        EXECUTE format('alter table if exists %s enable row level security', cmd.object_identity);
        RAISE LOG 'rls_auto_enable: enabled RLS on %', cmd.object_identity;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE LOG 'rls_auto_enable: failed to enable RLS on %', cmd.object_identity;
      END;
     ELSE
        RAISE LOG 'rls_auto_enable: skip % (either system schema or not in enforced list: %.)', cmd.object_identity, cmd.schema_name;
     END IF;
  END LOOP;
END;
$$;


ALTER FUNCTION public.rls_auto_enable() OWNER TO postgres;

--
-- Name: sellar_registrado_por(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.sellar_registrado_por() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
declare
  uid uuid;
begin
  uid := usuario_actual();
  -- Solo sobreescribe cuando hay identidad de app (inserts de service-role /
  -- edge functions dejan auth.uid() nulo y conservan lo que traigan).
  if uid is not null then
    new.registrado_por := uid;
  end if;
  return new;
end $$;


ALTER FUNCTION public.sellar_registrado_por() OWNER TO postgres;

--
-- Name: tiene_permiso(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tiene_permiso(p_permiso text) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  select public.es_admin()
      or exists (
           select 1 from public.permiso_usuario
            where usuario_id = public.usuario_actual()
              and permiso    = p_permiso
         );
$$;


ALTER FUNCTION public.tiene_permiso(p_permiso text) OWNER TO postgres;

--
-- Name: usuario_actual(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.usuario_actual() RETURNS uuid
    LANGUAGE sql STABLE SECURITY DEFINER
    SET search_path TO 'public'
    AS $$
  select id from usuario where auth_user_id = auth.uid() limit 1;
$$;


ALTER FUNCTION public.usuario_actual() OWNER TO postgres;

--
-- Name: apply_rls(jsonb, integer); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
    -- Regclass of the table e.g. public.notes
    entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

    -- I, U, D, T: insert, update ...
    action realtime.action = (
        case wal ->> 'action'
            when 'I' then 'INSERT'
            when 'U' then 'UPDATE'
            when 'D' then 'DELETE'
            else 'ERROR'
        end
    );

    -- Is row level security enabled for the table
    is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

    subscriptions realtime.subscription[] = array_agg(subs)
        from
            realtime.subscription subs
        where
            subs.entity = entity_
            -- Filter by action early - only get subscriptions interested in this action
            -- action_filter column can be: '*' (all), 'INSERT', 'UPDATE', or 'DELETE'
            and (subs.action_filter = '*' or subs.action_filter = action::text);

    -- Subscription vars
    working_role regrole;
    working_selected_columns text[];
    claimed_role regrole;
    claims jsonb;

    subscription_id uuid;
    subscription_has_access bool;
    visible_to_subscription_ids uuid[] = '{}';

    -- structured info for wal's columns
    columns realtime.wal_column[];
    -- previous identity values for update/delete
    old_columns realtime.wal_column[];

    error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

    -- Primary jsonb output for record
    output jsonb;

    -- Loop record for iterating unique roles (outer loop)
    role_record record;
    -- Loop record for iterating unique selected_columns within a role (inner loop)
    cols_record record;
    -- Subscription ids visible at the role level (before fanning out by selected_columns)
    visible_role_sub_ids uuid[] = '{}';

begin
    perform set_config('role', null, true);

    columns =
        array_agg(
            (
                x->>'name',
                x->>'type',
                x->>'typeoid',
                realtime.cast(
                    (x->'value') #>> '{}',
                    coalesce(
                        (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                        (x->>'type')::regtype
                    )
                ),
                (pks ->> 'name') is not null,
                true
            )::realtime.wal_column
        )
        from
            jsonb_array_elements(wal -> 'columns') x
            left join jsonb_array_elements(wal -> 'pk') pks
                on (x ->> 'name') = (pks ->> 'name');

    old_columns =
        array_agg(
            (
                x->>'name',
                x->>'type',
                x->>'typeoid',
                realtime.cast(
                    (x->'value') #>> '{}',
                    coalesce(
                        (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                        (x->>'type')::regtype
                    )
                ),
                (pks ->> 'name') is not null,
                true
            )::realtime.wal_column
        )
        from
            jsonb_array_elements(wal -> 'identity') x
            left join jsonb_array_elements(wal -> 'pk') pks
                on (x ->> 'name') = (pks ->> 'name');

    for role_record in
        select claims_role
        from (select distinct claims_role from unnest(subscriptions)) t
        order by claims_role::text
    loop
        working_role := role_record.claims_role;

        -- Update `is_selectable` for columns and old_columns (once per role)
        columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(columns) c;

        old_columns =
                array_agg(
                    (
                        c.name,
                        c.type_name,
                        c.type_oid,
                        c.value,
                        c.is_pkey,
                        pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                    )::realtime.wal_column
                )
                from
                    unnest(old_columns) c;

        if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
            -- Fan out 400 error per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;
                return next (
                    jsonb_build_object(
                        'schema', wal ->> 'schema',
                        'table', wal ->> 'table',
                        'type', action
                    ),
                    is_rls_enabled,
                    (select array_agg(s.subscription_id) from unnest(subscriptions) as s where s.claims_role = working_role and (s.selected_columns is not distinct from working_selected_columns)),
                    array['Error 400: Bad Request, no primary key']
                )::realtime.wal_rls;
            end loop;

        -- The claims role does not have SELECT permission to the primary key of entity
        elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
            -- Fan out 401 error per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;
                return next (
                    jsonb_build_object(
                        'schema', wal ->> 'schema',
                        'table', wal ->> 'table',
                        'type', action
                    ),
                    is_rls_enabled,
                    (select array_agg(s.subscription_id) from unnest(subscriptions) as s where s.claims_role = working_role and (s.selected_columns is not distinct from working_selected_columns)),
                    array['Error 401: Unauthorized']
                )::realtime.wal_rls;
            end loop;

        else
            -- Create the prepared statement (once per role)
            if is_rls_enabled and action <> 'DELETE' then
                if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                    deallocate walrus_rls_stmt;
                end if;
                execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
            end if;

            -- Collect all visible subscription IDs for this role (filter check + RLS check)
            visible_role_sub_ids = '{}';

            for subscription_id, claims in (
                    select
                        subs.subscription_id,
                        subs.claims
                    from
                        unnest(subscriptions) subs
                    where
                        subs.entity = entity_
                        and subs.claims_role = working_role
                        and (
                            realtime.is_visible_through_filters(columns, subs.filters)
                            or (
                              action = 'DELETE'
                              and realtime.is_visible_through_filters(old_columns, subs.filters)
                            )
                        )
            ) loop

                if not is_rls_enabled or action = 'DELETE' then
                    visible_role_sub_ids = visible_role_sub_ids || subscription_id;
                else
                    -- Check if RLS allows the role to see the record
                    perform
                        -- Trim leading and trailing quotes from working_role because set_config
                        -- doesn't recognize the role as valid if they are included
                        set_config('role', trim(both '"' from working_role::text), true),
                        set_config('request.jwt.claims', claims::text, true);

                    execute 'execute walrus_rls_stmt' into subscription_has_access;

                    -- Reset the role on every FOR..LOOP batch execution.
                    -- The first batch of 10 rows is pre-fetched using the current connection role (PG internal behaviour)
                    -- then we have to reset it again otherwise it would use the role defined in the `set_config` above
                    -- to fetch the remaining rows when rows>10, which could be a user-defined role that lacks execution grants.
                    -- The flow is:
                    --   1. run batch with conn role
                    --   2. set_config working_role
                    --   3. execute walrus
                    --   4. reset role (revert)
                    --   5. repeat
                    perform set_config('role', null, true);

                    if subscription_has_access then
                        visible_role_sub_ids = visible_role_sub_ids || subscription_id;
                    end if;
                end if;
            end loop;

            perform set_config('role', null, true);

            -- Inner loop: per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;

                output = jsonb_build_object(
                    'schema', wal ->> 'schema',
                    'table', wal ->> 'table',
                    'type', action,
                    'commit_timestamp', to_char(
                        ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                        'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
                    ),
                    'columns', (
                        select
                            jsonb_agg(
                                jsonb_build_object(
                                    'name', pa.attname,
                                    'type', pt.typname
                                )
                                order by pa.attnum asc
                            )
                        from
                            pg_attribute pa
                            join pg_type pt
                                on pa.atttypid = pt.oid
                            left join (
                                select unnest(conkey) as pkey_attnum
                                from pg_constraint
                                where conrelid = entity_ and contype = 'p'
                            ) pk on pk.pkey_attnum = pa.attnum
                        where
                            attrelid = entity_
                            and attnum > 0
                            and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
                            and (working_selected_columns is null or pa.attname = any(working_selected_columns) or pk.pkey_attnum is not null)
                    )
                )
                -- Add "record" key for insert and update
                || case
                    when action in ('INSERT', 'UPDATE') then
                        jsonb_build_object(
                            'record',
                            (
                                select
                                    jsonb_object_agg(
                                        -- if unchanged toast, get column name and value from old record
                                        coalesce((c).name, (oc).name),
                                        case
                                            when (c).name is null then (oc).value
                                            else (c).value
                                        end
                                    )
                                from
                                    unnest(columns) c
                                    full outer join unnest(old_columns) oc
                                        on (c).name = (oc).name
                                where
                                    coalesce((c).is_selectable, (oc).is_selectable)
                                    and (working_selected_columns is null or coalesce((c).name, (oc).name) = any(working_selected_columns) or coalesce((c).is_pkey, (oc).is_pkey))
                                    and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            )
                        )
                    else '{}'::jsonb
                end
                -- Add "old_record" key for update and delete
                || case
                    when action = 'UPDATE' then
                        jsonb_build_object(
                                'old_record',
                                (
                                    select jsonb_object_agg((c).name, (c).value)
                                    from unnest(old_columns) c
                                    where
                                        (c).is_selectable
                                        and (working_selected_columns is null or (c).name = any(working_selected_columns) or (c).is_pkey)
                                        and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                                )
                            )
                    when action = 'DELETE' then
                        jsonb_build_object(
                            'old_record',
                            (
                                select jsonb_object_agg((c).name, (c).value)
                                from unnest(old_columns) c
                                where
                                    (c).is_selectable
                                    and (working_selected_columns is null or (c).name = any(working_selected_columns) or (c).is_pkey)
                                    and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                                    and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                            )
                        )
                    else '{}'::jsonb
                end;

                -- Filter visible_role_sub_ids to those matching the current selected_columns group
                visible_to_subscription_ids = coalesce(
                    (
                        select array_agg(s.subscription_id)
                        from unnest(subscriptions) s
                        where s.claims_role = working_role
                          and (s.selected_columns is not distinct from working_selected_columns)
                          and s.subscription_id = any(visible_role_sub_ids)
                    ),
                    '{}'::uuid[]
                );

                return next (
                    output,
                    is_rls_enabled,
                    visible_to_subscription_ids,
                    case
                        when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                        else '{}'
                    end
                )::realtime.wal_rls;
            end loop;

        end if;
    end loop;

    perform set_config('role', null, true);
end;
$$;


ALTER FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) OWNER TO supabase_realtime_admin;

--
-- Name: broadcast_changes(text, text, text, text, text, record, record, text); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;


ALTER FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) OWNER TO supabase_realtime_admin;

--
-- Name: build_prepared_statement_sql(text, regclass, realtime.wal_column[]); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;


ALTER FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) OWNER TO supabase_realtime_admin;

--
-- Name: cast(text, regtype); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
declare
  res jsonb;
begin
  if type_::text = 'bytea' then
    return to_jsonb(val);
  end if;
  execute format('select to_jsonb(%L::'|| type_::text || ')', val) into res;
  return res;
end
$$;


ALTER FUNCTION realtime."cast"(val text, type_ regtype) OWNER TO supabase_realtime_admin;

--
-- Name: check_equality_op(realtime.equality_op, regtype, text, text); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
/*
Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
*/
declare
    op_symbol text = (
        case
            when op = 'eq' then '='
            when op = 'neq' then '!='
            when op = 'lt' then '<'
            when op = 'lte' then '<='
            when op = 'gt' then '>'
            when op = 'gte' then '>='
            when op = 'in' then '= any'
            else 'UNKNOWN OP'
        end
    );
    res boolean;
begin
    execute format(
        'select %L::'|| type_::text || ' ' || op_symbol
        || ' ( %L::'
        || (
            case
                when op = 'in' then type_::text || '[]'
                else type_::text end
        )
        || ')', val_1, val_2) into res;
    return res;
end;
$$;


ALTER FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) OWNER TO supabase_realtime_admin;

--
-- Name: check_equality_op(realtime.equality_op, regtype, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) RETURNS boolean
    LANGUAGE plpgsql STABLE
    AS $$
declare
    op_symbol text;
    res boolean;
begin
    -- IS DISTINCT FROM / IS NOT DISTINCT FROM: infix, both sides typed literals
    if op = 'isdistinct' then
        execute format(
            'select %L::%s %s %L::%s',
            val_1,
            type_::text,
            case when negate then 'IS NOT DISTINCT FROM' else 'IS DISTINCT FROM' end,
            val_2,
            type_::text
        ) into res;
        return res;
    end if;

    -- IS requires a keyword RHS (NULL, TRUE, FALSE, UNKNOWN), not a typed literal
    if op = 'is' then
        if val_2 not in ('null', 'true', 'false', 'unknown') then
            raise exception 'invalid value for is filter: must be null, true, false, or unknown';
        end if;
        execute format(
            'select %L::%s %s %s',
            val_1,
            type_::text,
            case when negate then 'IS NOT' else 'IS' end,
            upper(val_2)
        ) into res;
        return res;
    end if;

    op_symbol = case
        when op = 'eq'    then '='
        when op = 'neq'   then '!='
        when op = 'lt'    then '<'
        when op = 'lte'   then '<='
        when op = 'gt'    then '>'
        when op = 'gte'   then '>='
        when op = 'in'    then '= any'
        when op = 'like'   then 'LIKE'
        when op = 'ilike'  then 'ILIKE'
        when op = 'match'  then '~'
        when op = 'imatch' then '~*'
        else null
    end;

    if op_symbol is null then
        raise exception 'unsupported equality operator: %', op::text;
    end if;

    execute format(
        'select %L::%s %s (%L::%s)',
        val_1,
        type_::text,
        op_symbol,
        val_2,
        case when op = 'in' then type_::text || '[]' else type_::text end
    ) into res;

    return case when negate then not res else res end;
end;
$$;


ALTER FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) OWNER TO supabase_realtime_admin;

--
-- Name: is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[]); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
    select
        filters is null
        or array_length(filters, 1) is null
        or coalesce(
            count(col.name) = count(1)
            and sum(
                realtime.check_equality_op(
                    op:=f.op,
                    type_:=coalesce(col.type_oid::regtype, col.type_name::regtype),
                    val_1:=col.value #>> '{}',
                    val_2:=f.value,
                    negate:=coalesce(f.negate, false)
                )::int
            ) filter (where col.name is not null) = count(col.name),
            false
        )
    from
        unnest(filters) f
        left join unnest(columns) col
            on f.column_name = col.name;
$$;


ALTER FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) OWNER TO supabase_realtime_admin;

--
-- Name: list_changes(name, name, integer, integer); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS TABLE(wal jsonb, is_rls_enabled boolean, subscription_ids uuid[], errors text[], slot_changes_count bigint)
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
  WITH pub AS (
    SELECT
      concat_ws(
        ',',
        CASE WHEN bool_or(pubinsert) THEN 'insert' ELSE NULL END,
        CASE WHEN bool_or(pubupdate) THEN 'update' ELSE NULL END,
        CASE WHEN bool_or(pubdelete) THEN 'delete' ELSE NULL END
      ) AS w2j_actions,
      coalesce(
        string_agg(
          realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
          ','
        ) filter (WHERE ppt.tablename IS NOT NULL),
        ''
      ) AS w2j_add_tables
    FROM pg_publication pp
    LEFT JOIN pg_publication_tables ppt ON pp.pubname = ppt.pubname
    WHERE pp.pubname = publication
    GROUP BY pp.pubname
    LIMIT 1
  ),
  -- MATERIALIZED ensures pg_logical_slot_get_changes is called exactly once
  w2j AS MATERIALIZED (
    SELECT x.*, pub.w2j_add_tables
    FROM pub,
         pg_logical_slot_get_changes(
           slot_name, null, max_changes,
           'include-pk', 'true',
           'include-transaction', 'false',
           'include-timestamp', 'true',
           'include-type-oids', 'true',
           'format-version', '2',
           'actions', pub.w2j_actions,
           'add-tables', pub.w2j_add_tables
         ) x
  ),
  slot_count AS (
    SELECT count(*)::bigint AS cnt
    FROM w2j
    WHERE w2j.w2j_add_tables <> ''
  ),
  rls_filtered AS (
    SELECT xyz.wal, xyz.is_rls_enabled, xyz.subscription_ids, xyz.errors
    FROM w2j,
         realtime.apply_rls(
           wal := w2j.data::jsonb,
           max_record_bytes := max_record_bytes
         ) xyz(wal, is_rls_enabled, subscription_ids, errors)
    WHERE w2j.w2j_add_tables <> ''
      AND xyz.subscription_ids[1] IS NOT NULL
  )
  SELECT rf.wal, rf.is_rls_enabled, rf.subscription_ids, rf.errors, sc.cnt
  FROM rls_filtered rf, slot_count sc

  UNION ALL

  SELECT null, null, null, null, sc.cnt
  FROM slot_count sc
  WHERE NOT EXISTS (SELECT 1 FROM rls_filtered)
$$;


ALTER FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) OWNER TO supabase_realtime_admin;

--
-- Name: quote_wal2json(regclass); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
  SELECT
    realtime.wal2json_escape_identifier(nsp.nspname::text)
    || '.'
    || realtime.wal2json_escape_identifier(pc.relname::text)
  FROM pg_class pc
  JOIN pg_namespace nsp ON pc.relnamespace = nsp.oid
  WHERE pc.oid = entity
$$;


ALTER FUNCTION realtime.quote_wal2json(entity regclass) OWNER TO supabase_realtime_admin;

--
-- Name: send(jsonb, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  generated_id uuid;
  final_payload jsonb;
BEGIN
  BEGIN
    generated_id := gen_random_uuid();

    -- Check if payload has an 'id' key, if not, add the generated UUID
    IF payload ? 'id' THEN
      final_payload := payload;
    ELSE
      final_payload := jsonb_set(payload, '{id}', to_jsonb(generated_id));
    END IF;

    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    INSERT INTO realtime.messages (id, payload, event, topic, private, extension)
    VALUES (generated_id, final_payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      RAISE WARNING 'WarnSendingBroadcastMessage: %', SQLERRM;
  END;
END;
$$;


ALTER FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) OWNER TO supabase_realtime_admin;

--
-- Name: send_binary(bytea, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  generated_id uuid;
BEGIN
  BEGIN
    generated_id := gen_random_uuid();

    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    INSERT INTO realtime.messages (id, binary_payload, event, topic, private, extension)
    VALUES (generated_id, payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      RAISE WARNING 'WarnSendingBroadcastMessage: %', SQLERRM;
  END;
END;
$$;


ALTER FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) OWNER TO supabase_realtime_admin;

--
-- Name: subscription_check_filters(); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
    col_names text[] = coalesce(
            array_agg(a.attname order by a.attnum),
            '{}'::text[]
        )
        from
            pg_catalog.pg_attribute a
        where
            a.attrelid = new.entity
            and a.attnum > 0
            and not a.attisdropped
            and pg_catalog.has_column_privilege(
                (new.claims ->> 'role'),
                a.attrelid,
                a.attnum,
                'SELECT'
            );
    filter realtime.user_defined_filter;
    col_type regtype;
    in_val jsonb;
    selected_col text;
begin
    for filter in select * from unnest(new.filters) loop
        if not filter.column_name = any(col_names) then
            raise exception 'invalid column for filter %', filter.column_name;
        end if;

        col_type = (
            select atttypid::regtype
            from pg_catalog.pg_attribute
            where attrelid = new.entity
                  and attname = filter.column_name
        );
        if col_type is null then
            raise exception 'failed to lookup type for column %', filter.column_name;
        end if;

        if filter.op = 'in'::realtime.equality_op then
            in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
            if coalesce(jsonb_array_length(in_val), 0) > 100 then
                raise exception 'too many values for `in` filter. Maximum 100';
            end if;
        elsif filter.op = 'is'::realtime.equality_op then
            -- `is` requires a keyword RHS rather than a typed literal
            if filter.value not in ('null', 'true', 'false', 'unknown') then
                raise exception 'invalid value for is filter: must be null, true, false, or unknown';
            end if;
            -- IS NULL works for any type, but IS TRUE/FALSE/UNKNOWN require a boolean
            -- operand. Reject the non-null keywords on non-boolean columns here so they
            -- don't abort apply_rls at WAL time.
            if filter.value <> 'null' and col_type <> 'boolean'::regtype then
                raise exception 'is % filter requires a boolean column, got %', filter.value, col_type::text;
            end if;
        elsif filter.op in ('like'::realtime.equality_op, 'ilike'::realtime.equality_op) then
            -- like/ilike apply the text pattern operator (~~); reject column types that
            -- have no such operator instead of failing at WAL time
            if not exists (
                select 1 from pg_catalog.pg_operator
                where oprname = '~~' and oprleft = col_type
            ) then
                raise exception 'operator % requires a text-compatible column type, got %', filter.op::text, col_type::text;
            end if;
        elsif filter.op in ('match'::realtime.equality_op, 'imatch'::realtime.equality_op) then
            -- match/imatch apply the regex operators ~ / ~*; reject column types that have
            -- no such operator (e.g. integer) instead of failing at WAL time, mirroring the
            -- like/ilike guard above.
            if not exists (
                select 1 from pg_catalog.pg_operator
                where oprname = case when filter.op = 'imatch'::realtime.equality_op then '~*' else '~' end
                  and oprleft = col_type
                  and oprright = col_type
                  and oprresult = 'boolean'::regtype
            ) then
                raise exception 'operator % requires a text-compatible column type, got %', filter.op::text, col_type::text;
            end if;
            -- validate the regex eagerly so a bad pattern is rejected here, not inside
            -- apply_rls where it would abort the WAL stream for the entity
            begin
                perform '' ~ filter.value;
            exception when others then
                raise exception 'invalid regular expression for % filter: %', filter.op::text, sqlerrm;
            end;
        else
            -- eq/neq/lt/lte/gt/gte: value must be coercable to the type
            perform realtime.cast(filter.value, col_type);
        end if;
    end loop;

    if new.selected_columns is not null then
        for selected_col in select * from unnest(new.selected_columns) loop
            if not selected_col = any(col_names) then
                raise exception 'invalid column for select %', selected_col;
            end if;
        end loop;
    end if;

    -- Apply consistent order to filters so the unique constraint can't be tricked by a
    -- different filter order. negate is part of the sort key.
    new.filters = coalesce(
        array_agg(f order by f.column_name, f.op, f.value, f.negate),
        '{}'
    ) from unnest(new.filters) f;

    new.selected_columns = (
        select array_agg(c order by c)
        from unnest(new.selected_columns) c
    );

    return new;
end;
$$;


ALTER FUNCTION realtime.subscription_check_filters() OWNER TO supabase_realtime_admin;

--
-- Name: to_regrole(text); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;


ALTER FUNCTION realtime.to_regrole(role_name text) OWNER TO supabase_realtime_admin;

--
-- Name: topic(); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;


ALTER FUNCTION realtime.topic() OWNER TO supabase_realtime_admin;

--
-- Name: wal2json_escape_identifier(text); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.wal2json_escape_identifier(name text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
  -- Prefix `\`, `,`, `.`, and any whitespace with `\`
  SELECT regexp_replace(name, '([\\,.[:space:]])', '\\\1', 'g')
$$;


ALTER FUNCTION realtime.wal2json_escape_identifier(name text) OWNER TO supabase_realtime_admin;

--
-- Name: allow_any_operation(text[]); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.allow_any_operation(expected_operations text[]) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
  WITH current_operation AS (
    SELECT storage.operation() AS raw_operation
  ),
  normalized AS (
    SELECT CASE
      WHEN raw_operation LIKE 'storage.%' THEN substr(raw_operation, 9)
      ELSE raw_operation
    END AS current_operation
    FROM current_operation
  )
  SELECT EXISTS (
    SELECT 1
    FROM normalized n
    CROSS JOIN LATERAL unnest(expected_operations) AS expected_operation
    WHERE expected_operation IS NOT NULL
      AND expected_operation <> ''
      AND n.current_operation = CASE
        WHEN expected_operation LIKE 'storage.%' THEN substr(expected_operation, 9)
        ELSE expected_operation
      END
  );
$$;


ALTER FUNCTION storage.allow_any_operation(expected_operations text[]) OWNER TO supabase_storage_admin;

--
-- Name: allow_only_operation(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.allow_only_operation(expected_operation text) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
  WITH current_operation AS (
    SELECT storage.operation() AS raw_operation
  ),
  normalized AS (
    SELECT
      CASE
        WHEN raw_operation LIKE 'storage.%' THEN substr(raw_operation, 9)
        ELSE raw_operation
      END AS current_operation,
      CASE
        WHEN expected_operation LIKE 'storage.%' THEN substr(expected_operation, 9)
        ELSE expected_operation
      END AS requested_operation
    FROM current_operation
  )
  SELECT CASE
    WHEN requested_operation IS NULL OR requested_operation = '' THEN FALSE
    ELSE COALESCE(current_operation = requested_operation, FALSE)
  END
  FROM normalized;
$$;


ALTER FUNCTION storage.allow_only_operation(expected_operation text) OWNER TO supabase_storage_admin;

--
-- Name: can_insert_object(text, text, uuid, jsonb); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;


ALTER FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) OWNER TO supabase_storage_admin;

--
-- Name: enforce_bucket_name_length(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.enforce_bucket_name_length() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
    if length(new.name) > 100 then
        raise exception 'bucket name "%" is too long (% characters). Max is 100.', new.name, length(new.name);
    end if;
    return new;
end;
$$;


ALTER FUNCTION storage.enforce_bucket_name_length() OWNER TO supabase_storage_admin;

--
-- Name: extension(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
    _filename text;
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Get the last path segment (the actual filename)
    SELECT _parts[array_length(_parts, 1)] INTO _filename;
    -- Extract extension: reverse, split on '.', then reverse again
    RETURN reverse(split_part(reverse(_filename), '.', 1));
END
$$;


ALTER FUNCTION storage.extension(name text) OWNER TO supabase_storage_admin;

--
-- Name: filename(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
BEGIN
    SELECT string_to_array(name, '/') INTO _parts;
    RETURN _parts[array_length(_parts, 1)];
END
$$;


ALTER FUNCTION storage.filename(name text) OWNER TO supabase_storage_admin;

--
-- Name: foldername(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Return everything except the last segment
    RETURN _parts[1 : array_length(_parts,1) - 1];
END
$$;


ALTER FUNCTION storage.foldername(name text) OWNER TO supabase_storage_admin;

--
-- Name: get_common_prefix(text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT CASE
    WHEN position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)) > 0
    THEN left(p_key, length(p_prefix) + position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)))
    ELSE NULL
END;
$$;


ALTER FUNCTION storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text) OWNER TO supabase_storage_admin;

--
-- Name: get_size_by_bucket(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::bigint)::bigint as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;


ALTER FUNCTION storage.get_size_by_bucket() OWNER TO supabase_storage_admin;

--
-- Name: list_multipart_uploads_with_delimiter(text, text, text, integer, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;


ALTER FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text) OWNER TO supabase_storage_admin;

--
-- Name: list_objects_with_delimiter(text, text, text, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;

    -- Configuration
    v_is_asc BOOLEAN;
    v_prefix TEXT;
    v_start TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_is_asc := lower(coalesce(sort_order, 'asc')) = 'asc';
    v_prefix := coalesce(prefix_param, '');
    v_start := CASE WHEN coalesce(next_token, '') <> '' THEN next_token ELSE coalesce(start_after, '') END;
    v_file_batch_size := LEAST(GREATEST(max_keys * 2, 100), 1000);

    -- Calculate upper bound for prefix filtering (bytewise, using COLLATE "C")
    IF v_prefix = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix, 1) = delimiter_param THEN
        v_upper_bound := left(v_prefix, -1) || chr(ascii(delimiter_param) + 1);
    ELSE
        v_upper_bound := left(v_prefix, -1) || chr(ascii(right(v_prefix, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'AND o.name COLLATE "C" < $3 ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'AND o.name COLLATE "C" >= $3 ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- ========================================================================
    -- SEEK INITIALIZATION: Determine starting position
    -- ========================================================================
    IF v_start = '' THEN
        IF v_is_asc THEN
            v_next_seek := v_prefix;
        ELSE
            -- DESC without cursor: find the last item in range
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;

            IF v_next_seek IS NOT NULL THEN
                v_next_seek := v_next_seek || delimiter_param;
            ELSE
                RETURN;
            END IF;
        END IF;
    ELSE
        -- Cursor provided: determine if it refers to a folder or leaf
        IF EXISTS (
            SELECT 1 FROM storage.objects o
            WHERE o.bucket_id = _bucket_id
              AND o.name COLLATE "C" LIKE v_start || delimiter_param || '%'
            LIMIT 1
        ) THEN
            -- Cursor refers to a folder
            IF v_is_asc THEN
                v_next_seek := v_start || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_start || delimiter_param;
            END IF;
        ELSE
            -- Cursor refers to a leaf object
            IF v_is_asc THEN
                v_next_seek := v_start || delimiter_param;
            ELSE
                v_next_seek := v_start;
            END IF;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= max_keys;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(v_peek_name, v_prefix, delimiter_param);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Emit and skip to next folder (no heap access needed)
            name := rtrim(v_common_prefix, delimiter_param);
            id := NULL;
            updated_at := NULL;
            created_at := NULL;
            last_accessed_at := NULL;
            metadata := NULL;
            RETURN NEXT;
            v_count := v_count + 1;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := left(v_common_prefix, -1) || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_common_prefix;
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query USING _bucket_id, v_next_seek,
                CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix) ELSE v_prefix END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(v_current.name, v_prefix, delimiter_param);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := v_current.name;
                    EXIT;
                END IF;

                -- Emit file
                name := v_current.name;
                id := v_current.id;
                updated_at := v_current.updated_at;
                created_at := v_current.created_at;
                last_accessed_at := v_current.last_accessed_at;
                metadata := v_current.metadata;
                RETURN NEXT;
                v_count := v_count + 1;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := v_current.name || delimiter_param;
                ELSE
                    v_next_seek := v_current.name;
                END IF;

                EXIT WHEN v_count >= max_keys;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


ALTER FUNCTION storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text, sort_order text) OWNER TO supabase_storage_admin;

--
-- Name: operation(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;


ALTER FUNCTION storage.operation() OWNER TO supabase_storage_admin;

--
-- Name: protect_delete(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.protect_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Check if storage.allow_delete_query is set to 'true'
    IF COALESCE(current_setting('storage.allow_delete_query', true), 'false') != 'true' THEN
        RAISE EXCEPTION 'Direct deletion from storage tables is not allowed. Use the Storage API instead.'
            USING HINT = 'This prevents accidental data loss from orphaned objects.',
                  ERRCODE = '42501';
    END IF;
    RETURN NULL;
END;
$$;


ALTER FUNCTION storage.protect_delete() OWNER TO supabase_storage_admin;

--
-- Name: search(text, text, integer, integer, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;
    v_delimiter CONSTANT TEXT := '/';

    -- Configuration
    v_limit INT;
    v_prefix TEXT;
    v_prefix_lower TEXT;
    v_prefix_len INT;
    v_prefix_start INT;
    v_combined_levels INT;
    v_is_asc BOOLEAN;
    v_order_by TEXT;
    v_sort_order TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;
    v_skipped INT := 0;
BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_limit := LEAST(coalesce(limits, 100), 1500);
    v_prefix := coalesce(prefix, '') || coalesce(search, '');
    v_prefix_lower := lower(v_prefix);
    v_prefix_len := length(coalesce(prefix, ''));
    v_prefix_start := coalesce(array_length(string_to_array(coalesce(prefix, ''), v_delimiter), 1), 1);
    v_combined_levels := coalesce(array_length(string_to_array(v_prefix, v_delimiter), 1), 1);
    v_is_asc := lower(coalesce(sortorder, 'asc')) = 'asc';
    v_file_batch_size := LEAST(GREATEST(v_limit * 2, 100), 1000);

    -- Validate sort column
    CASE lower(coalesce(sortcolumn, 'name'))
        WHEN 'name' THEN v_order_by := 'name';
        WHEN 'updated_at' THEN v_order_by := 'updated_at';
        WHEN 'created_at' THEN v_order_by := 'created_at';
        WHEN 'last_accessed_at' THEN v_order_by := 'last_accessed_at';
        ELSE v_order_by := 'name';
    END CASE;

    v_sort_order := CASE WHEN v_is_asc THEN 'asc' ELSE 'desc' END;

    -- ========================================================================
    -- NON-NAME SORTING: Use path_tokens approach
    -- ========================================================================
    IF v_order_by != 'name' THEN
        RETURN QUERY EXECUTE format(
            $sql$
            WITH folders AS (
                SELECT array_to_string(path_tokens[$1:$2], '/') AS folder
                FROM storage.objects
                WHERE objects.name ILIKE $3 || '%%'
                  AND bucket_id = $4
                  AND array_length(objects.path_tokens, 1) <> $2
                GROUP BY folder
                ORDER BY folder %s
            )
            (SELECT folder AS "name",
                   NULL::uuid AS id,
                   NULL::timestamptz AS updated_at,
                   NULL::timestamptz AS created_at,
                   NULL::timestamptz AS last_accessed_at,
                   NULL::jsonb AS metadata FROM folders)
            UNION ALL
            (SELECT array_to_string(path_tokens[$1:$2], '/') AS "name",
                   id, updated_at, created_at, last_accessed_at, metadata
             FROM storage.objects
             WHERE objects.name ILIKE $3 || '%%'
               AND bucket_id = $4
               AND array_length(objects.path_tokens, 1) = $2
             ORDER BY %I %s)
            LIMIT $5 OFFSET $6
            $sql$, v_sort_order, v_order_by, v_sort_order
        ) USING v_prefix_start, v_combined_levels, v_prefix, bucketname, v_limit, offsets;
        RETURN;
    END IF;

    -- ========================================================================
    -- NAME SORTING: Hybrid skip-scan with batch optimization
    -- ========================================================================

    -- Calculate upper bound for prefix filtering
    IF v_prefix_lower = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix_lower, 1) = v_delimiter THEN
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(v_delimiter) + 1);
    ELSE
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(right(v_prefix_lower, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'AND lower(o.name) COLLATE "C" < $3 ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'AND lower(o.name) COLLATE "C" >= $3 ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- Initialize seek position
    IF v_is_asc THEN
        v_next_seek := v_prefix_lower;
    ELSE
        -- DESC: find the last item in range first (static SQL)
        IF v_upper_bound IS NOT NULL THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower AND lower(o.name) COLLATE "C" < v_upper_bound
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSIF v_prefix_lower <> '' THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSE
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        END IF;

        IF v_peek_name IS NOT NULL THEN
            v_next_seek := lower(v_peek_name) || v_delimiter;
        ELSE
            RETURN;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= v_limit;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek AND lower(o.name) COLLATE "C" < v_upper_bound
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix_lower <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(lower(v_peek_name), v_prefix_lower, v_delimiter);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Handle offset, emit if needed, skip to next folder
            IF v_skipped < offsets THEN
                v_skipped := v_skipped + 1;
            ELSE
                name := substring(rtrim(storage.get_common_prefix(v_peek_name, v_prefix, v_delimiter), v_delimiter) from v_prefix_len + 1);
                id := NULL;
                updated_at := NULL;
                created_at := NULL;
                last_accessed_at := NULL;
                metadata := NULL;
                RETURN NEXT;
                v_count := v_count + 1;
            END IF;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := lower(left(v_common_prefix, -1)) || chr(ascii(v_delimiter) + 1);
            ELSE
                v_next_seek := lower(v_common_prefix);
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix_lower is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query
                USING bucketname, v_next_seek,
                    CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix_lower) ELSE v_prefix_lower END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(lower(v_current.name), v_prefix_lower, v_delimiter);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := lower(v_current.name);
                    EXIT;
                END IF;

                -- Handle offset skipping
                IF v_skipped < offsets THEN
                    v_skipped := v_skipped + 1;
                ELSE
                    -- Emit file
                    name := substring(v_current.name from v_prefix_len + 1);
                    id := v_current.id;
                    updated_at := v_current.updated_at;
                    created_at := v_current.created_at;
                    last_accessed_at := v_current.last_accessed_at;
                    metadata := v_current.metadata;
                    RETURN NEXT;
                    v_count := v_count + 1;
                END IF;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := lower(v_current.name) || v_delimiter;
                ELSE
                    v_next_seek := lower(v_current.name);
                END IF;

                EXIT WHEN v_count >= v_limit;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


ALTER FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text) OWNER TO supabase_storage_admin;

--
-- Name: search_by_timestamp(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_cursor_op text;
    v_query text;
    v_prefix text;
    v_sort_order text;
    v_sort_column text;
BEGIN
    v_prefix := coalesce(p_prefix, '');

    -- Defense-in-depth: this function is independently reachable and must
    -- not trust p_sort_order/p_sort_column to already be validated by a
    -- caller. Normalize to the same strict allow-list storage.search_v2
    -- uses before interpolating anything into dynamic SQL below.
    v_sort_order := lower(coalesce(p_sort_order, 'asc'));
    IF v_sort_order NOT IN ('asc', 'desc') THEN
        v_sort_order := 'asc';
    END IF;

    v_sort_column := lower(coalesce(p_sort_column, 'updated_at'));
    IF v_sort_column NOT IN ('updated_at', 'created_at') THEN
        v_sort_column := 'updated_at';
    END IF;

    IF v_sort_order = 'asc' THEN
        v_cursor_op := '>';
    ELSE
        v_cursor_op := '<';
    END IF;

    v_query := format($sql$
        WITH raw_objects AS (
            SELECT
                o.name AS obj_name,
                o.id AS obj_id,
                o.updated_at AS obj_updated_at,
                o.created_at AS obj_created_at,
                o.last_accessed_at AS obj_last_accessed_at,
                o.metadata AS obj_metadata,
                storage.get_common_prefix(o.name, $1, '/') AS common_prefix
            FROM storage.objects o
            WHERE o.bucket_id = $2
              AND o.name COLLATE "C" LIKE $1 || '%%'
        ),
        -- Aggregate common prefixes (folders)
        -- Both created_at and updated_at use MIN(obj_created_at) to match the old prefixes table behavior
        aggregated_prefixes AS (
            SELECT
                rtrim(common_prefix, '/') AS name,
                NULL::uuid AS id,
                MIN(obj_created_at) AS updated_at,
                MIN(obj_created_at) AS created_at,
                NULL::timestamptz AS last_accessed_at,
                NULL::jsonb AS metadata,
                TRUE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NOT NULL
            GROUP BY common_prefix
        ),
        leaf_objects AS (
            SELECT
                obj_name AS name,
                obj_id AS id,
                obj_updated_at AS updated_at,
                obj_created_at AS created_at,
                obj_last_accessed_at AS last_accessed_at,
                obj_metadata AS metadata,
                FALSE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NULL
        ),
        combined AS (
            SELECT * FROM aggregated_prefixes
            UNION ALL
            SELECT * FROM leaf_objects
        ),
        filtered AS (
            SELECT *
            FROM combined
            WHERE (
                $5 = ''
                OR ROW(
                    date_trunc('milliseconds', %I),
                    name COLLATE "C"
                ) %s ROW(
                    COALESCE(NULLIF($6, '')::timestamptz, 'epoch'::timestamptz),
                    $5
                )
            )
        )
        SELECT
            split_part(name, '/', $3) AS key,
            name,
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
        FROM filtered
        ORDER BY
            COALESCE(date_trunc('milliseconds', %I), 'epoch'::timestamptz) %s,
            name COLLATE "C" %s
        LIMIT $4
    $sql$,
        v_sort_column,
        v_cursor_op,
        v_sort_column,
        v_sort_order,
        v_sort_order
    );

    RETURN QUERY EXECUTE v_query
    USING v_prefix, p_bucket_id, p_level, p_limit, p_start_after, p_sort_column_after;
END;
$_$;


ALTER FUNCTION storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text) OWNER TO supabase_storage_admin;

--
-- Name: search_v2(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer DEFAULT 100, levels integer DEFAULT 1, start_after text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text, sort_column text DEFAULT 'name'::text, sort_column_after text DEFAULT ''::text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $$
DECLARE
    v_sort_col text;
    v_sort_ord text;
    v_limit int;
BEGIN
    -- Cap limit to maximum of 1500 records
    v_limit := LEAST(coalesce(limits, 100), 1500);

    -- Validate and normalize sort_order
    v_sort_ord := lower(coalesce(sort_order, 'asc'));
    IF v_sort_ord NOT IN ('asc', 'desc') THEN
        v_sort_ord := 'asc';
    END IF;

    -- Validate and normalize sort_column
    v_sort_col := lower(coalesce(sort_column, 'name'));
    IF v_sort_col NOT IN ('name', 'updated_at', 'created_at') THEN
        v_sort_col := 'name';
    END IF;

    -- Route to appropriate implementation
    IF v_sort_col = 'name' THEN
        -- Use list_objects_with_delimiter for name sorting (most efficient: O(k * log n))
        RETURN QUERY
        SELECT
            split_part(l.name, '/', levels) AS key,
            l.name AS name,
            l.id,
            l.updated_at,
            l.created_at,
            l.last_accessed_at,
            l.metadata
        FROM storage.list_objects_with_delimiter(
            bucket_name,
            coalesce(prefix, ''),
            '/',
            v_limit,
            start_after,
            '',
            v_sort_ord
        ) l;
    ELSE
        -- Use aggregation approach for timestamp sorting
        -- Not efficient for large datasets but supports correct pagination
        RETURN QUERY SELECT * FROM storage.search_by_timestamp(
            prefix, bucket_name, v_limit, levels, start_after,
            v_sort_ord, v_sort_col, sort_column_after
        );
    END IF;
END;
$$;


ALTER FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer, levels integer, start_after text, sort_order text, sort_column text, sort_column_after text) OWNER TO supabase_storage_admin;

--
-- Name: update_updated_at_column(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;


ALTER FUNCTION storage.update_updated_at_column() OWNER TO supabase_storage_admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audit_log_entries; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE auth.audit_log_entries OWNER TO supabase_auth_admin;

--
-- Name: TABLE audit_log_entries; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';


--
-- Name: custom_oauth_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.custom_oauth_providers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    provider_type text NOT NULL,
    identifier text NOT NULL,
    name text NOT NULL,
    client_id text NOT NULL,
    client_secret text NOT NULL,
    acceptable_client_ids text[] DEFAULT '{}'::text[] NOT NULL,
    scopes text[] DEFAULT '{}'::text[] NOT NULL,
    pkce_enabled boolean DEFAULT true NOT NULL,
    attribute_mapping jsonb DEFAULT '{}'::jsonb NOT NULL,
    authorization_params jsonb DEFAULT '{}'::jsonb NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    email_optional boolean DEFAULT false NOT NULL,
    issuer text,
    discovery_url text,
    skip_nonce_check boolean DEFAULT false NOT NULL,
    cached_discovery jsonb,
    discovery_cached_at timestamp with time zone,
    authorization_url text,
    token_url text,
    userinfo_url text,
    jwks_uri text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    custom_claims_allowlist text[] DEFAULT '{}'::text[] NOT NULL,
    CONSTRAINT custom_oauth_providers_authorization_url_https CHECK (((authorization_url IS NULL) OR (authorization_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_authorization_url_length CHECK (((authorization_url IS NULL) OR (char_length(authorization_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_client_id_length CHECK (((char_length(client_id) >= 1) AND (char_length(client_id) <= 512))),
    CONSTRAINT custom_oauth_providers_discovery_url_length CHECK (((discovery_url IS NULL) OR (char_length(discovery_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_identifier_format CHECK ((identifier ~ '^[a-z0-9][a-z0-9:-]{0,48}[a-z0-9]$'::text)),
    CONSTRAINT custom_oauth_providers_issuer_length CHECK (((issuer IS NULL) OR ((char_length(issuer) >= 1) AND (char_length(issuer) <= 2048)))),
    CONSTRAINT custom_oauth_providers_jwks_uri_https CHECK (((jwks_uri IS NULL) OR (jwks_uri ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_jwks_uri_length CHECK (((jwks_uri IS NULL) OR (char_length(jwks_uri) <= 2048))),
    CONSTRAINT custom_oauth_providers_name_length CHECK (((char_length(name) >= 1) AND (char_length(name) <= 100))),
    CONSTRAINT custom_oauth_providers_oauth2_requires_endpoints CHECK (((provider_type <> 'oauth2'::text) OR ((authorization_url IS NOT NULL) AND (token_url IS NOT NULL) AND (userinfo_url IS NOT NULL)))),
    CONSTRAINT custom_oauth_providers_oidc_discovery_url_https CHECK (((provider_type <> 'oidc'::text) OR (discovery_url IS NULL) OR (discovery_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_oidc_issuer_https CHECK (((provider_type <> 'oidc'::text) OR (issuer IS NULL) OR (issuer ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_oidc_requires_issuer CHECK (((provider_type <> 'oidc'::text) OR (issuer IS NOT NULL))),
    CONSTRAINT custom_oauth_providers_provider_type_check CHECK ((provider_type = ANY (ARRAY['oauth2'::text, 'oidc'::text]))),
    CONSTRAINT custom_oauth_providers_token_url_https CHECK (((token_url IS NULL) OR (token_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_token_url_length CHECK (((token_url IS NULL) OR (char_length(token_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_userinfo_url_https CHECK (((userinfo_url IS NULL) OR (userinfo_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_userinfo_url_length CHECK (((userinfo_url IS NULL) OR (char_length(userinfo_url) <= 2048)))
);


ALTER TABLE auth.custom_oauth_providers OWNER TO supabase_auth_admin;

--
-- Name: flow_state; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text,
    code_challenge_method auth.code_challenge_method,
    code_challenge text,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone,
    invite_token text,
    referrer text,
    oauth_client_state_id uuid,
    linking_target_id uuid,
    email_optional boolean DEFAULT false NOT NULL
);


ALTER TABLE auth.flow_state OWNER TO supabase_auth_admin;

--
-- Name: TABLE flow_state; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.flow_state IS 'Stores metadata for all OAuth/SSO login flows';


--
-- Name: identities; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


ALTER TABLE auth.identities OWNER TO supabase_auth_admin;

--
-- Name: TABLE identities; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';


--
-- Name: COLUMN identities.email; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';


--
-- Name: instances; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE auth.instances OWNER TO supabase_auth_admin;

--
-- Name: TABLE instances; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';


--
-- Name: mfa_amr_claims; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);


ALTER TABLE auth.mfa_amr_claims OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_amr_claims; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';


--
-- Name: mfa_challenges; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);


ALTER TABLE auth.mfa_challenges OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_challenges; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';


--
-- Name: mfa_factors; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid,
    last_webauthn_challenge_data jsonb
);


ALTER TABLE auth.mfa_factors OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_factors; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';


--
-- Name: COLUMN mfa_factors.last_webauthn_challenge_data; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.mfa_factors.last_webauthn_challenge_data IS 'Stores the latest WebAuthn challenge data including attestation/assertion for customer verification';


--
-- Name: oauth_authorizations; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_authorizations (
    id uuid NOT NULL,
    authorization_id text NOT NULL,
    client_id uuid NOT NULL,
    user_id uuid,
    redirect_uri text NOT NULL,
    scope text NOT NULL,
    state text,
    resource text,
    code_challenge text,
    code_challenge_method auth.code_challenge_method,
    response_type auth.oauth_response_type DEFAULT 'code'::auth.oauth_response_type NOT NULL,
    status auth.oauth_authorization_status DEFAULT 'pending'::auth.oauth_authorization_status NOT NULL,
    authorization_code text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone DEFAULT (now() + '00:03:00'::interval) NOT NULL,
    approved_at timestamp with time zone,
    nonce text,
    CONSTRAINT oauth_authorizations_authorization_code_length CHECK ((char_length(authorization_code) <= 255)),
    CONSTRAINT oauth_authorizations_code_challenge_length CHECK ((char_length(code_challenge) <= 128)),
    CONSTRAINT oauth_authorizations_expires_at_future CHECK ((expires_at > created_at)),
    CONSTRAINT oauth_authorizations_nonce_length CHECK ((char_length(nonce) <= 255)),
    CONSTRAINT oauth_authorizations_redirect_uri_length CHECK ((char_length(redirect_uri) <= 2048)),
    CONSTRAINT oauth_authorizations_resource_length CHECK ((char_length(resource) <= 2048)),
    CONSTRAINT oauth_authorizations_scope_length CHECK ((char_length(scope) <= 4096)),
    CONSTRAINT oauth_authorizations_state_length CHECK ((char_length(state) <= 4096))
);


ALTER TABLE auth.oauth_authorizations OWNER TO supabase_auth_admin;

--
-- Name: oauth_client_states; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_client_states (
    id uuid NOT NULL,
    provider_type text NOT NULL,
    code_verifier text,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE auth.oauth_client_states OWNER TO supabase_auth_admin;

--
-- Name: TABLE oauth_client_states; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.oauth_client_states IS 'Stores OAuth states for third-party provider authentication flows where Supabase acts as the OAuth client.';


--
-- Name: oauth_clients; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_clients (
    id uuid NOT NULL,
    client_secret_hash text,
    registration_type auth.oauth_registration_type NOT NULL,
    redirect_uris text NOT NULL,
    grant_types text NOT NULL,
    client_name text,
    client_uri text,
    logo_uri text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    client_type auth.oauth_client_type DEFAULT 'confidential'::auth.oauth_client_type NOT NULL,
    token_endpoint_auth_method text NOT NULL,
    CONSTRAINT oauth_clients_client_name_length CHECK ((char_length(client_name) <= 1024)),
    CONSTRAINT oauth_clients_client_uri_length CHECK ((char_length(client_uri) <= 2048)),
    CONSTRAINT oauth_clients_logo_uri_length CHECK ((char_length(logo_uri) <= 2048)),
    CONSTRAINT oauth_clients_token_endpoint_auth_method_check CHECK ((token_endpoint_auth_method = ANY (ARRAY['client_secret_basic'::text, 'client_secret_post'::text, 'none'::text])))
);


ALTER TABLE auth.oauth_clients OWNER TO supabase_auth_admin;

--
-- Name: oauth_consents; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_consents (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    client_id uuid NOT NULL,
    scopes text NOT NULL,
    granted_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_at timestamp with time zone,
    CONSTRAINT oauth_consents_revoked_after_granted CHECK (((revoked_at IS NULL) OR (revoked_at >= granted_at))),
    CONSTRAINT oauth_consents_scopes_length CHECK ((char_length(scopes) <= 2048)),
    CONSTRAINT oauth_consents_scopes_not_empty CHECK ((char_length(TRIM(BOTH FROM scopes)) > 0))
);


ALTER TABLE auth.oauth_consents OWNER TO supabase_auth_admin;

--
-- Name: one_time_tokens; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);


ALTER TABLE auth.one_time_tokens OWNER TO supabase_auth_admin;

--
-- Name: refresh_tokens; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);


ALTER TABLE auth.refresh_tokens OWNER TO supabase_auth_admin;

--
-- Name: TABLE refresh_tokens; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE; Schema: auth; Owner: supabase_auth_admin
--

CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE auth.refresh_tokens_id_seq OWNER TO supabase_auth_admin;

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: auth; Owner: supabase_auth_admin
--

ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;


--
-- Name: saml_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);


ALTER TABLE auth.saml_providers OWNER TO supabase_auth_admin;

--
-- Name: TABLE saml_providers; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';


--
-- Name: saml_relay_states; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);


ALTER TABLE auth.saml_relay_states OWNER TO supabase_auth_admin;

--
-- Name: TABLE saml_relay_states; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';


--
-- Name: schema_migrations; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE auth.schema_migrations OWNER TO supabase_auth_admin;

--
-- Name: TABLE schema_migrations; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';


--
-- Name: sessions; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text,
    oauth_client_id uuid,
    refresh_token_hmac_key text,
    refresh_token_counter bigint,
    scopes text,
    CONSTRAINT sessions_scopes_length CHECK ((char_length(scopes) <= 4096))
);


ALTER TABLE auth.sessions OWNER TO supabase_auth_admin;

--
-- Name: TABLE sessions; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';


--
-- Name: COLUMN sessions.not_after; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';


--
-- Name: COLUMN sessions.refresh_token_hmac_key; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.refresh_token_hmac_key IS 'Holds a HMAC-SHA256 key used to sign refresh tokens for this session.';


--
-- Name: COLUMN sessions.refresh_token_counter; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.refresh_token_counter IS 'Holds the ID (counter) of the last issued refresh token.';


--
-- Name: sso_domains; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);


ALTER TABLE auth.sso_domains OWNER TO supabase_auth_admin;

--
-- Name: TABLE sso_domains; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';


--
-- Name: sso_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    disabled boolean,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);


ALTER TABLE auth.sso_providers OWNER TO supabase_auth_admin;

--
-- Name: TABLE sso_providers; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';


--
-- Name: COLUMN sso_providers.resource_id; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';


--
-- Name: users; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);


ALTER TABLE auth.users OWNER TO supabase_auth_admin;

--
-- Name: TABLE users; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';


--
-- Name: COLUMN users.is_sso_user; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';


--
-- Name: webauthn_challenges; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.webauthn_challenges (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid,
    challenge_type text NOT NULL,
    session_data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    CONSTRAINT webauthn_challenges_challenge_type_check CHECK ((challenge_type = ANY (ARRAY['signup'::text, 'registration'::text, 'authentication'::text])))
);


ALTER TABLE auth.webauthn_challenges OWNER TO supabase_auth_admin;

--
-- Name: webauthn_credentials; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.webauthn_credentials (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    credential_id bytea NOT NULL,
    public_key bytea NOT NULL,
    attestation_type text DEFAULT ''::text NOT NULL,
    aaguid uuid,
    sign_count bigint DEFAULT 0 NOT NULL,
    transports jsonb DEFAULT '[]'::jsonb NOT NULL,
    backup_eligible boolean DEFAULT false NOT NULL,
    backed_up boolean DEFAULT false NOT NULL,
    friendly_name text DEFAULT ''::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    last_used_at timestamp with time zone
);


ALTER TABLE auth.webauthn_credentials OWNER TO supabase_auth_admin;

--
-- Name: abono_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abono_proveedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    proveedor_id uuid NOT NULL,
    compra_id uuid,
    monto numeric(12,2) NOT NULL,
    metodo_pago public.metodo_pago DEFAULT 'efectivo'::public.metodo_pago NOT NULL,
    registrado_por uuid NOT NULL,
    nota text,
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    jornada_id uuid
);


ALTER TABLE public.abono_proveedor OWNER TO postgres;

--
-- Name: cambio_tasa_prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cambio_tasa_prestamo (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    prestamo_id uuid NOT NULL,
    tasa_anterior numeric(6,3) NOT NULL,
    tasa_nueva numeric(6,3) NOT NULL,
    tipo_anterior public.tipo_interes NOT NULL,
    tipo_nuevo public.tipo_interes NOT NULL,
    interes_agregado numeric(14,2) DEFAULT 0 NOT NULL,
    motivo text NOT NULL,
    cambiado_por uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.cambio_tasa_prestamo OWNER TO postgres;

--
-- Name: cobro_importadora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cobro_importadora (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    venta_id uuid NOT NULL,
    importadora_id uuid,
    monto numeric(16,2) NOT NULL,
    metodo_pago public.metodo_pago DEFAULT 'transferencia'::public.metodo_pago NOT NULL,
    referencia text,
    registrado_por uuid,
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT cobro_importadora_monto_check CHECK ((monto > (0)::numeric))
);


ALTER TABLE public.cobro_importadora OWNER TO postgres;

--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    proveedor_id uuid,
    vendedor_id uuid NOT NULL,
    precio_diario_id uuid,
    precio_snapshot numeric(12,4) NOT NULL,
    cantidad numeric(10,3) NOT NULL,
    unidad public.unidad_medida NOT NULL,
    cantidad_kg numeric(12,4) NOT NULL,
    total numeric(14,2) NOT NULL,
    estado_sync public.estado_sync DEFAULT 'pendiente'::public.estado_sync NOT NULL,
    timestamp_local timestamp with time zone NOT NULL,
    timestamp_sync timestamp with time zone,
    dispositivo_id text NOT NULL,
    nota text,
    anulada boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    tipo_cacao public.tipo_cacao NOT NULL,
    precio_quintal_snapshot numeric(12,4) NOT NULL,
    lote_secado_id uuid,
    estado_pago public.estado_pago DEFAULT 'pagado'::public.estado_pago NOT NULL,
    monto_pagado numeric(14,2) DEFAULT 0 NOT NULL,
    saldo_pagar numeric(14,2) DEFAULT 0 NOT NULL,
    precio_manual boolean DEFAULT false NOT NULL,
    contenedor_id uuid,
    peso_bascula_kg numeric(12,4),
    jornada_id uuid,
    llego_tarde boolean DEFAULT false NOT NULL,
    anulada_en timestamp with time zone,
    anulada_por uuid,
    motivo_anulacion text
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: COLUMN compra.precio_manual; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.compra.precio_manual IS 'true = el vendedor pactó un precio distinto al precio_diario de ese día. El precio real acordado está en precio_quintal_snapshot.';


--
-- Name: COLUMN compra.peso_bascula_kg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.compra.peso_bascula_kg IS 'Peso pesado en báscula cuando el contenedor no tiene equivalencia fija. NULL si se usó la equivalencia configurada.';


--
-- Name: COLUMN compra.motivo_anulacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.compra.motivo_anulacion IS 'Por qué se anuló. Obligatorio: revertir mercancía y deuda sin explicación no es auditable.';


--
-- Name: condonacion_mora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condonacion_mora (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    prestamo_id uuid NOT NULL,
    monto_condonado numeric(14,2) NOT NULL,
    motivo text NOT NULL,
    autorizado_por uuid NOT NULL,
    fecha date DEFAULT public.hoy_rd() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.condonacion_mora OWNER TO postgres;

--
-- Name: config_sistema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.config_sistema (
    clave text NOT NULL,
    valor text NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.config_sistema OWNER TO postgres;

--
-- Name: contenedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contenedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.contenedor OWNER TO postgres;

--
-- Name: contenedor_equivalencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contenedor_equivalencia (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    contenedor_id uuid NOT NULL,
    tipo_cacao public.tipo_cacao NOT NULL,
    equivalencia_kg numeric(10,4),
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.contenedor_equivalencia OWNER TO postgres;

--
-- Name: cuota_prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuota_prestamo (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    prestamo_id uuid NOT NULL,
    numero_cuota integer NOT NULL,
    fecha_vence date NOT NULL,
    monto_capital numeric(14,2) NOT NULL,
    monto_interes numeric(14,2) DEFAULT 0 NOT NULL,
    monto_total numeric(14,2) NOT NULL,
    pagado boolean DEFAULT false NOT NULL,
    fecha_pago date,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.cuota_prestamo OWNER TO postgres;

--
-- Name: desembolso_prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desembolso_prestamo (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    prestamo_id uuid NOT NULL,
    monto numeric(14,2) NOT NULL,
    interes_generado numeric(14,2) DEFAULT 0 NOT NULL,
    dias_restantes integer,
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    registrado_por uuid,
    nota text,
    inicial boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT desembolso_prestamo_monto_check CHECK ((monto > (0)::numeric))
);


ALTER TABLE public.desembolso_prestamo OWNER TO postgres;

--
-- Name: finca_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.finca_proveedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    proveedor_id uuid NOT NULL,
    tareas_sembradas numeric(8,2),
    quintales_estimados_anio numeric(10,2),
    variedad_cacao text,
    ubicacion_finca text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    limite_credito_sugerido numeric(14,2),
    limite_credito_aprobado numeric(14,2),
    factor_riesgo numeric(4,2) DEFAULT 0.50 NOT NULL,
    precio_referencia_qq numeric(12,2) DEFAULT 12000 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT finca_factor_rango CHECK (((factor_riesgo > (0)::numeric) AND (factor_riesgo <= (1)::numeric))),
    CONSTRAINT finca_precio_no_negativo CHECK ((precio_referencia_qq >= (0)::numeric)),
    CONSTRAINT finca_quintales_positivos CHECK (((quintales_estimados_anio IS NULL) OR (quintales_estimados_anio > (0)::numeric))),
    CONSTRAINT finca_tareas_positivas CHECK (((tareas_sembradas IS NULL) OR (tareas_sembradas > (0)::numeric)))
);


ALTER TABLE public.finca_proveedor OWNER TO postgres;

--
-- Name: fondo_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fondo_diario (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    vendedor_id uuid NOT NULL,
    fecha date DEFAULT public.hoy_rd() NOT NULL,
    monto_asignado numeric(14,2) NOT NULL,
    monto_pagado numeric(14,2) DEFAULT 0 NOT NULL,
    diferencia numeric(14,2),
    cerrado boolean DEFAULT false NOT NULL,
    jornada_id uuid,
    sin_limite boolean DEFAULT false NOT NULL,
    CONSTRAINT fondo_diario_monto_coherente CHECK ((sin_limite OR (monto_asignado > (0)::numeric)))
);


ALTER TABLE public.fondo_diario OWNER TO postgres;

--
-- Name: COLUMN fondo_diario.sin_limite; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.fondo_diario.sin_limite IS 'true = jornada sin tope de caja. `monto_asignado` deja de ser un límite y el disponible no se calcula.';


--
-- Name: gasto_operativo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gasto_operativo (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    categoria text NOT NULL,
    descripcion text NOT NULL,
    monto numeric NOT NULL,
    fecha date NOT NULL,
    comprobante_ref text,
    registrado_por uuid,
    created_at timestamp with time zone DEFAULT now(),
    CONSTRAINT gasto_operativo_categoria_check CHECK ((categoria = ANY (ARRAY['transporte'::text, 'combustible'::text, 'sacos_envases'::text, 'salarios'::text, 'mantenimiento'::text, 'alimentacion'::text, 'otros'::text]))),
    CONSTRAINT gasto_operativo_monto_check CHECK ((monto > (0)::numeric))
);


ALTER TABLE public.gasto_operativo OWNER TO postgres;

--
-- Name: importadora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.importadora (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    nombre text NOT NULL,
    nombre_fiscal text NOT NULL,
    rnc text,
    telefono text,
    email text,
    direccion text,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.importadora OWNER TO postgres;

--
-- Name: proceso_secado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proceso_secado (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    fecha_inicio date DEFAULT public.hoy_rd() NOT NULL,
    fecha_fin date,
    kg_baba_entrada numeric(12,4) NOT NULL,
    kg_seco_salida numeric(12,4),
    rendimiento_pct numeric(5,2) GENERATED ALWAYS AS (
CASE
    WHEN ((kg_seco_salida IS NOT NULL) AND (kg_baba_entrada > (0)::numeric)) THEN round(((kg_seco_salida / kg_baba_entrada) * (100)::numeric), 2)
    ELSE NULL::numeric
END) STORED,
    estado public.estado_secado DEFAULT 'en_proceso'::public.estado_secado NOT NULL,
    registrado_por uuid NOT NULL,
    nota text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.proceso_secado OWNER TO postgres;

--
-- Name: venta_importadora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta_importadora (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    empresa text,
    volumen_kg numeric(14,4) NOT NULL,
    precio_venta numeric(12,4) NOT NULL,
    total numeric(16,2) GENERATED ALWAYS AS ((volumen_kg * precio_venta)) STORED,
    numero_comprobante text,
    registrado_por uuid NOT NULL,
    nota text,
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    tipo_cacao public.tipo_cacao DEFAULT 'seco'::public.tipo_cacao NOT NULL,
    importadora_id uuid NOT NULL,
    estado_cobro public.estado_cobro DEFAULT 'pendiente'::public.estado_cobro NOT NULL,
    monto_cobrado numeric(16,2) DEFAULT 0 NOT NULL,
    saldo_cobrar numeric(16,2)
);


ALTER TABLE public.venta_importadora OWNER TO postgres;

--
-- Name: inventario_disponible; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.inventario_disponible AS
 WITH compras AS (
         SELECT COALESCE(sum(compra.cantidad_kg) FILTER (WHERE (compra.tipo_cacao = 'baba'::public.tipo_cacao)), (0)::numeric) AS baba,
            COALESCE(sum(compra.cantidad_kg) FILTER (WHERE (compra.tipo_cacao = 'seco'::public.tipo_cacao)), (0)::numeric) AS seco
           FROM public.compra
          WHERE (compra.anulada = false)
        ), secado AS (
         SELECT COALESCE(sum(proceso_secado.kg_baba_entrada) FILTER (WHERE (proceso_secado.estado = ANY (ARRAY['en_proceso'::public.estado_secado, 'completado'::public.estado_secado]))), (0)::numeric) AS baba_entrada,
            COALESCE(sum(proceso_secado.kg_seco_salida) FILTER (WHERE (proceso_secado.estado = 'completado'::public.estado_secado)), (0)::numeric) AS seco_salida
           FROM public.proceso_secado
        ), ventas AS (
         SELECT COALESCE(sum(venta_importadora.volumen_kg) FILTER (WHERE (venta_importadora.tipo_cacao = 'baba'::public.tipo_cacao)), (0)::numeric) AS baba,
            COALESCE(sum(venta_importadora.volumen_kg) FILTER (WHERE (venta_importadora.tipo_cacao = 'seco'::public.tipo_cacao)), (0)::numeric) AS seco
           FROM public.venta_importadora
        )
 SELECT ((compras.baba - secado.baba_entrada) - ventas.baba) AS kg_baba_disponible,
    ((compras.seco + secado.seco_salida) - ventas.seco) AS kg_seco_disponible
   FROM compras,
    secado,
    ventas;


ALTER VIEW public.inventario_disponible OWNER TO postgres;

--
-- Name: VIEW inventario_disponible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON VIEW public.inventario_disponible IS 'Inventario por tipo de cacao. Fuente única de verdad: el frontend nunca recalcula esto. La baba en secado sale de proceso_secado.kg_baba_entrada (volumen), no de secado_compras (diseño descartado).';


--
-- Name: jornada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jornada (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    numero bigint NOT NULL,
    fecha_apertura date DEFAULT public.hoy_rd() NOT NULL,
    abierta_en timestamp with time zone DEFAULT now() NOT NULL,
    cerrada_en timestamp with time zone,
    estado text DEFAULT 'abierta'::text NOT NULL,
    abierta_por uuid NOT NULL,
    cerrada_por uuid,
    precio_apertura_id uuid,
    sintetica boolean DEFAULT false NOT NULL,
    nota text,
    compras_count integer,
    kg_seco numeric(14,4),
    kg_baba numeric(14,4),
    rd_seco numeric(14,2),
    rd_baba numeric(14,2),
    rd_total numeric(14,2),
    pagado_efectivo numeric(14,2),
    deuda_generada numeric(14,2),
    abonos_cobrados numeric(14,2),
    detalle_vendedores jsonb,
    cuadre_calculado_en timestamp with time zone,
    recalculado_en timestamp with time zone,
    recalculado_por uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    cobros_prestamo numeric(14,2),
    CONSTRAINT jornada_cierre_coherente CHECK (((estado = 'abierta'::text) = (cerrada_en IS NULL))),
    CONSTRAINT jornada_estado_check CHECK ((estado = ANY (ARRAY['abierta'::text, 'cerrada'::text, 'cerrada_sin_cuadre'::text])))
);


ALTER TABLE public.jornada OWNER TO postgres;

--
-- Name: COLUMN jornada.cobros_prestamo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.jornada.cobros_prestamo IS 'Efectivo de cobros de préstamo recibido en la jornada. Entra a la caja del vendedor.';


--
-- Name: jornada_numero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.jornada ALTER COLUMN numero ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.jornada_numero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: pago_prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago_prestamo (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    prestamo_id uuid NOT NULL,
    cuota_id uuid,
    registrado_por uuid NOT NULL,
    monto_total numeric(14,2) NOT NULL,
    aplicado_mora numeric(14,2) DEFAULT 0 NOT NULL,
    aplicado_interes numeric(14,2) DEFAULT 0 NOT NULL,
    aplicado_capital numeric(14,2) DEFAULT 0 NOT NULL,
    tipo public.tipo_pago_prestamo DEFAULT 'abono'::public.tipo_pago_prestamo NOT NULL,
    metodo_pago public.metodo_pago DEFAULT 'efectivo'::public.metodo_pago NOT NULL,
    referencia text,
    nota text,
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    sincronizado_en timestamp with time zone
);


ALTER TABLE public.pago_prestamo OWNER TO postgres;

--
-- Name: COLUMN pago_prestamo.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pago_prestamo.fecha IS 'Momento REAL del cobro (lo informa el dispositivo). Puede ser anterior a sincronizado_en.';


--
-- Name: COLUMN pago_prestamo.sincronizado_en; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pago_prestamo.sincronizado_en IS 'Cuándo llegó al servidor. Distinto de `fecha` cuando el cobro se hizo sin señal.';


--
-- Name: permiso_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permiso_usuario (
    usuario_id uuid NOT NULL,
    permiso text NOT NULL,
    otorgado_por uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.permiso_usuario OWNER TO postgres;

--
-- Name: TABLE permiso_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.permiso_usuario IS 'Capacidades extra por usuario. El admin las tiene todas implícitamente.';


--
-- Name: precio_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precio_diario (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    fecha date NOT NULL,
    precio_quintal_seco numeric(12,4) NOT NULL,
    precio_anterior numeric(12,4),
    hora_cambio time without time zone,
    fijado_por uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    precio_quintal_baba numeric(12,4) NOT NULL,
    precio_anterior_baba numeric(12,4),
    precio_baba_calculado boolean DEFAULT false NOT NULL,
    jornada_id uuid,
    vigente_desde timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.precio_diario OWNER TO postgres;

--
-- Name: prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestamo (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    proveedor_id uuid NOT NULL,
    registrado_por uuid NOT NULL,
    monto_principal numeric(14,2) NOT NULL,
    tasa_interes_pct numeric(5,2) DEFAULT 0 NOT NULL,
    tipo_interes public.tipo_interes DEFAULT 'exento'::public.tipo_interes NOT NULL,
    modalidad_pago public.modalidad_pago DEFAULT 'abonos_libres'::public.modalidad_pago NOT NULL,
    tipo_plazo public.tipo_plazo DEFAULT 'meses'::public.tipo_plazo NOT NULL,
    plazo_meses integer,
    num_cuotas integer,
    fecha_desembolso date DEFAULT public.hoy_rd() NOT NULL,
    fecha_vencimiento date,
    saldo_capital numeric(14,2) NOT NULL,
    interes_acumulado numeric(14,2) DEFAULT 0 NOT NULL,
    mora_acumulada numeric(14,2) DEFAULT 0 NOT NULL,
    total_pagado numeric(14,2) DEFAULT 0 NOT NULL,
    estado public.estado_prestamo DEFAULT 'activo'::public.estado_prestamo NOT NULL,
    nota text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    anulado_en timestamp with time zone,
    anulado_por uuid,
    motivo_anulacion text
);


ALTER TABLE public.prestamo OWNER TO postgres;

--
-- Name: COLUMN prestamo.motivo_anulacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.prestamo.motivo_anulacion IS 'Por qué se anuló. Obligatorio: un desembolso revertido sin explicación no es auditable.';


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    nombre text NOT NULL,
    cedula text,
    telefono text,
    tipo public.tipo_proveedor DEFAULT 'registrado'::public.tipo_proveedor NOT NULL,
    saldo_pendiente numeric(12,2) DEFAULT 0 NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    vende_cacao boolean DEFAULT true NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: COLUMN proveedor.vende_cacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.proveedor.vende_cacao IS 'false = persona registrada solo para préstamos. No aparece en el buscador de compras, pero sí en el de préstamos.';


--
-- Name: scoring_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scoring_proveedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    proveedor_id uuid NOT NULL,
    categoria public.categoria_scoring DEFAULT 'A'::public.categoria_scoring NOT NULL,
    pagos_puntuales integer DEFAULT 0 NOT NULL,
    pagos_tardios integer DEFAULT 0 NOT NULL,
    moras_activas integer DEFAULT 0 NOT NULL,
    moras_condonadas integer DEFAULT 0 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.scoring_proveedor OWNER TO postgres;

--
-- Name: secado_compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secado_compras (
    secado_id uuid NOT NULL,
    compra_id uuid NOT NULL,
    kg_aportado numeric(12,4) NOT NULL
);


ALTER TABLE public.secado_compras OWNER TO postgres;

--
-- Name: unidad_conversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unidad_conversion (
    unidad text NOT NULL,
    equivalencia_kg numeric NOT NULL,
    descripcion text
);


ALTER TABLE public.unidad_conversion OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    nombre text NOT NULL,
    email text,
    rol public.rol_usuario DEFAULT 'vendedor'::public.rol_usuario NOT NULL,
    auth_user_id uuid,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: vendedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendedor (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    nombre text NOT NULL,
    cedula text,
    telefono text,
    dispositivo_id text,
    impresora_bt text,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    usuario_id uuid NOT NULL
);


ALTER TABLE public.vendedor OWNER TO postgres;

--
-- Name: messages; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea
)
PARTITION BY RANGE (inserted_at);


ALTER TABLE realtime.messages OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_26; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_26 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_26 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_27; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_27 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_27 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_28; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_28 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_28 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_29; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_29 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_29 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_30; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_30 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_30 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_08_31; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_08_31 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_08_31 OWNER TO supabase_realtime_admin;

--
-- Name: messages_2026_09_01; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages_2026_09_01 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea,
    CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL)))
);


ALTER TABLE realtime.messages_2026_09_01 OWNER TO supabase_realtime_admin;

--
-- Name: schema_migrations; Type: TABLE; Schema: realtime; Owner: supabase_admin
--

CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


ALTER TABLE realtime.schema_migrations OWNER TO supabase_admin;

--
-- Name: subscription; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    action_filter text DEFAULT '*'::text,
    selected_columns text[],
    CONSTRAINT subscription_action_filter_check CHECK ((action_filter = ANY (ARRAY['*'::text, 'INSERT'::text, 'UPDATE'::text, 'DELETE'::text])))
);


ALTER TABLE realtime.subscription OWNER TO supabase_realtime_admin;

--
-- Name: subscription_id_seq; Type: SEQUENCE; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: buckets; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text,
    type storage.buckettype DEFAULT 'STANDARD'::storage.buckettype NOT NULL,
    versioning_status text DEFAULT 'DISABLED'::text NOT NULL,
    CONSTRAINT buckets_versioning_dark_check CHECK ((versioning_status = 'DISABLED'::text)),
    CONSTRAINT buckets_versioning_standard_only_check CHECK (((type = 'STANDARD'::storage.buckettype) OR (versioning_status = 'DISABLED'::text))),
    CONSTRAINT buckets_versioning_status_check CHECK ((versioning_status = ANY (ARRAY['DISABLED'::text, 'ENABLED'::text, 'SUSPENDED'::text])))
);


ALTER TABLE storage.buckets OWNER TO supabase_storage_admin;

--
-- Name: COLUMN buckets.owner; Type: COMMENT; Schema: storage; Owner: supabase_storage_admin
--

COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: buckets_analytics; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets_analytics (
    name text NOT NULL,
    type storage.buckettype DEFAULT 'ANALYTICS'::storage.buckettype NOT NULL,
    format text DEFAULT 'ICEBERG'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE storage.buckets_analytics OWNER TO supabase_storage_admin;

--
-- Name: buckets_vectors; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets_vectors (
    id text NOT NULL,
    type storage.buckettype DEFAULT 'VECTOR'::storage.buckettype NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.buckets_vectors OWNER TO supabase_storage_admin;

--
-- Name: migrations; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE storage.migrations OWNER TO supabase_storage_admin;

--
-- Name: objects; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb,
    archived_at timestamp with time zone,
    is_delete_marker boolean DEFAULT false NOT NULL,
    is_versioned boolean DEFAULT false NOT NULL
);


ALTER TABLE storage.objects OWNER TO supabase_storage_admin;

--
-- Name: COLUMN objects.owner; Type: COMMENT; Schema: storage; Owner: supabase_storage_admin
--

COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: s3_multipart_uploads; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb,
    metadata jsonb
);


ALTER TABLE storage.s3_multipart_uploads OWNER TO supabase_storage_admin;

--
-- Name: s3_multipart_uploads_parts; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.s3_multipart_uploads_parts OWNER TO supabase_storage_admin;

--
-- Name: vector_indexes; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.vector_indexes (
    id text DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL COLLATE pg_catalog."C",
    bucket_id text NOT NULL,
    data_type text NOT NULL,
    dimension integer NOT NULL,
    distance_metric text NOT NULL,
    metadata_configuration jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.vector_indexes OWNER TO supabase_storage_admin;

--
-- Name: messages_2026_08_26; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_26 FOR VALUES FROM ('2026-08-26 00:00:00') TO ('2026-08-27 00:00:00');


--
-- Name: messages_2026_08_27; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_27 FOR VALUES FROM ('2026-08-27 00:00:00') TO ('2026-08-28 00:00:00');


--
-- Name: messages_2026_08_28; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_28 FOR VALUES FROM ('2026-08-28 00:00:00') TO ('2026-08-29 00:00:00');


--
-- Name: messages_2026_08_29; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_29 FOR VALUES FROM ('2026-08-29 00:00:00') TO ('2026-08-30 00:00:00');


--
-- Name: messages_2026_08_30; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_30 FOR VALUES FROM ('2026-08-30 00:00:00') TO ('2026-08-31 00:00:00');


--
-- Name: messages_2026_08_31; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_08_31 FOR VALUES FROM ('2026-08-31 00:00:00') TO ('2026-09-01 00:00:00');


--
-- Name: messages_2026_09_01; Type: TABLE ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_09_01 FOR VALUES FROM ('2026-09-01 00:00:00') TO ('2026-09-02 00:00:00');


--
-- Name: refresh_tokens id; Type: DEFAULT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);


--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.custom_oauth_providers (id, provider_type, identifier, name, client_id, client_secret, acceptable_client_ids, scopes, pkce_enabled, attribute_mapping, authorization_params, enabled, email_optional, issuer, discovery_url, skip_nonce_check, cached_discovery, discovery_cached_at, authorization_url, token_url, userinfo_url, jwks_uri, created_at, updated_at, custom_claims_allowlist) FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at, invite_token, referrer, oauth_client_state_id, linking_target_id, email_optional) FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	{"sub": "50471f55-7b80-41ea-86ee-4e91338d3864", "email": "admin@cacao.com", "email_verified": false, "phone_verified": false}	email	2026-07-04 15:51:10.950341-04	2026-07-04 15:51:10.950398-04	2026-07-04 15:51:10.950398-04	cfefc26d-3de5-4b99-b9cb-bea65bf63a7c
eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	{"sub": "eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7", "email": "adriel@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-08 19:30:19.659199-04	2026-07-08 19:30:19.659252-04	2026-07-08 19:30:19.659252-04	a84ee2b4-cbe9-449a-87ac-0d182ee7c47e
94610e54-aa86-4ed9-9ba5-c82d0fc079cb	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	{"sub": "94610e54-aa86-4ed9-9ba5-c82d0fc079cb", "email": "misael14@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-11 23:25:45.865654-04	2026-08-11 23:25:45.865715-04	2026-08-11 23:25:45.865715-04	c45428a8-453e-4af2-a6c6-12634019f216
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
3686bc9b-de1b-4b9a-a4de-7df5e8f9169c	2026-08-26 10:26:50.235294-04	2026-08-26 10:26:50.235294-04	password	7bc81c6b-0283-440d-9e44-e7df25a01439
b7bd8e04-e683-475f-a93c-3a0b134a6d8f	2026-08-26 10:55:18.83414-04	2026-08-26 10:55:18.83414-04	password	71e46ed9-0d35-4c61-9207-c55367989213
6e1e362d-ae2d-460c-8186-7b06b180362f	2026-08-26 11:00:14.309192-04	2026-08-26 11:00:14.309192-04	password	18b04b86-6dd2-4e20-90f6-aac101fefca3
7895d218-d2e2-44d2-b135-42ca8c557548	2026-08-28 15:24:01.523291-04	2026-08-28 15:24:01.523291-04	password	a6f8c6d6-d655-4c6a-9493-55b29350cc33
4dd4ec77-fd67-402d-a2f8-7ff0a4ffc88f	2026-08-28 23:06:03.890513-04	2026-08-28 23:06:03.890513-04	password	b4f23b34-88a2-4d5f-9727-d57786493fcd
c9fc70f5-c7d6-4c5c-be40-279164466307	2026-08-11 23:27:16.800974-04	2026-08-11 23:27:16.800974-04	password	c334cb8f-f31f-433d-a875-22a9aa37b3c2
a966d882-959e-4647-9099-c668e88dc34b	2026-08-28 23:17:33.810633-04	2026-08-28 23:17:33.810633-04	password	03293a72-c18a-455f-a759-ded4ec5136ad
55962b2b-e703-49b1-b5af-254bcb113e54	2026-08-28 23:22:41.040396-04	2026-08-28 23:22:41.040396-04	password	22864608-5749-4fd6-9711-981f7a161df2
1c4ea36e-2852-454b-bd60-44daa7e2880e	2026-08-13 22:11:12.519863-04	2026-08-13 22:11:12.519863-04	password	408ec21f-7098-4a44-91ab-66a781924c54
19ca9914-7d13-4e4f-9ced-ef6f7d419988	2026-08-15 00:45:51.082361-04	2026-08-15 00:45:51.082361-04	password	529ef6fb-2e7d-46f3-8e3f-c993381e2586
c0a5f5c5-0c1a-41bf-9c1d-202789960485	2026-08-15 00:47:48.931829-04	2026-08-15 00:47:48.931829-04	password	0e413848-79c1-4ed0-af0a-6361d62574e9
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid, last_webauthn_challenge_data) FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.oauth_authorizations (id, authorization_id, client_id, user_id, redirect_uri, scope, state, resource, code_challenge, code_challenge_method, response_type, status, authorization_code, created_at, expires_at, approved_at, nonce) FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.oauth_client_states (id, provider_type, code_verifier, created_at) FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.oauth_clients (id, client_secret_hash, registration_type, redirect_uris, grant_types, client_name, client_uri, logo_uri, created_at, updated_at, deleted_at, client_type, token_endpoint_auth_method) FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.oauth_consents (id, user_id, client_id, scopes, granted_at, revoked_at) FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
00000000-0000-0000-0000-000000000000	196	gtizxnl6xt74	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-15 10:15:03.055544-04	2026-08-15 15:06:57.285359-04	ksvtbzmpo3i3	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	235	qxxdost3imnq	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-21 13:15:30.956989-04	2026-08-21 23:35:25.249067-04	6y77wq37ftba	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	238	fcji3zsamjtr	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-21 23:35:25.266455-04	2026-08-22 16:12:38.006116-04	qxxdost3imnq	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	198	whgprudjm2j6	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-15 15:06:57.309419-04	2026-08-16 13:26:11.300422-04	gtizxnl6xt74	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	151	mlaxhr7row5u	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-11 23:27:16.794294-04	2026-08-12 13:12:19.532557-04	\N	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	214	zbzgcnygwmxp	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-20 07:33:06.666714-04	2026-08-23 18:10:02.735117-04	3iryrq3tm32b	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	152	aagbde3csq2s	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-12 13:12:19.560274-04	2026-08-12 15:31:39.096807-04	mlaxhr7row5u	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	242	uqxaopgunk5d	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	f	2026-08-23 18:10:02.743695-04	2026-08-23 18:10:02.743695-04	zbzgcnygwmxp	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	191	lipijtcj4ssj	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-15 00:11:59.043079-04	2026-08-17 19:09:43.868413-04	5d24dkm4jc6m	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	153	oeuzeiqeispk	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-12 15:31:39.121073-04	2026-08-12 17:55:30.393076-04	aagbde3csq2s	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	155	jvuiiqyniby6	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-12 17:55:30.411476-04	2026-08-13 11:51:15.519014-04	oeuzeiqeispk	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	240	o5rny4t4i6ms	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-22 16:12:38.00843-04	2026-08-25 15:08:08.577934-04	fcji3zsamjtr	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	157	awmngkohrt4o	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-13 11:51:15.542255-04	2026-08-13 17:43:35.773679-04	jvuiiqyniby6	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	204	jimcv4w6qe2m	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-17 19:09:43.879834-04	2026-08-18 18:40:27.208237-04	lipijtcj4ssj	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	245	kq2egarirv7o	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-25 15:08:08.583534-04	2026-08-25 16:44:31.55516-04	o5rny4t4i6ms	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	158	ro4vldfyxgvf	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-13 17:43:35.792092-04	2026-08-13 18:55:19.587042-04	awmngkohrt4o	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	201	lwwqsqhhvodb	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-16 13:26:11.32509-04	2026-08-19 09:21:55.755021-04	whgprudjm2j6	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	207	xhffebr47gin	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-18 18:40:27.213904-04	2026-08-19 17:39:10.282762-04	jimcv4w6qe2m	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	225	bq4mvgczyvoz	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-21 09:06:20.287352-04	2026-08-26 08:56:21.137311-04	fj2l6zvrvuf6	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	250	hu4e4fy2qdaz	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	f	2026-08-26 08:56:21.156831-04	2026-08-26 08:56:21.156831-04	bq4mvgczyvoz	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	210	5fflvgmi7vqb	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-19 17:39:10.300513-04	2026-08-19 21:39:40.604358-04	xhffebr47gin	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	161	vlf3gp6w2dvn	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-13 18:55:19.591144-04	2026-08-14 16:45:06.022836-04	ro4vldfyxgvf	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	167	t32puwbcgj4j	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-14 16:45:06.038222-04	2026-08-14 22:31:28.315296-04	vlf3gp6w2dvn	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	209	3iryrq3tm32b	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-19 09:21:55.778274-04	2026-08-20 07:33:06.646406-04	lwwqsqhhvodb	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	254	atx6didh3rcv	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-26 10:55:18.807807-04	2026-08-26 10:55:18.807807-04	\N	b7bd8e04-e683-475f-a93c-3a0b134a6d8f
00000000-0000-0000-0000-000000000000	212	wjywn6fgfge5	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-19 21:39:40.630052-04	2026-08-20 23:16:36.650025-04	5fflvgmi7vqb	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	247	ld66psryn77v	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-25 16:44:31.56212-04	2026-08-26 11:05:42.342194-04	kq2egarirv7o	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	193	sjgsdzoxktef	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-15 00:43:17.844492-04	2026-08-21 08:00:27.044301-04	w4d52bytdds7	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	255	vmd5dpglp3pf	50471f55-7b80-41ea-86ee-4e91338d3864	t	2026-08-26 11:00:14.302415-04	2026-08-26 17:31:26.547427-04	\N	6e1e362d-ae2d-460c-8186-7b06b180362f
00000000-0000-0000-0000-000000000000	257	co4md4tims2h	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-26 17:31:26.571373-04	2026-08-26 17:31:26.571373-04	vmd5dpglp3pf	6e1e362d-ae2d-460c-8186-7b06b180362f
00000000-0000-0000-0000-000000000000	256	btsx7jsuntro	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-26 11:05:42.354638-04	2026-08-26 18:22:59.144989-04	ld66psryn77v	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	163	fs4v7jnlkbgb	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-13 22:11:12.492034-04	2026-08-14 23:35:00.235848-04	\N	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	253	gnwghjpg2nsh	50471f55-7b80-41ea-86ee-4e91338d3864	t	2026-08-26 10:26:50.226514-04	2026-08-27 12:39:10.025891-04	\N	3686bc9b-de1b-4b9a-a4de-7df5e8f9169c
00000000-0000-0000-0000-000000000000	258	76qmkefclcyn	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-26 18:22:59.151331-04	2026-08-27 23:17:43.431203-04	btsx7jsuntro	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	218	fj2l6zvrvuf6	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-21 08:00:27.066855-04	2026-08-21 09:06:20.274678-04	sjgsdzoxktef	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	260	neulpm6bnhj7	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-27 23:17:43.454828-04	2026-08-28 16:10:32.170533-04	76qmkefclcyn	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	261	oukpne4ypa4v	50471f55-7b80-41ea-86ee-4e91338d3864	t	2026-08-28 15:24:01.485327-04	2026-08-28 16:27:45.302196-04	\N	7895d218-d2e2-44d2-b135-42ca8c557548
00000000-0000-0000-0000-000000000000	263	zwbgugxjbd2f	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-28 16:27:45.316356-04	2026-08-28 16:27:45.316356-04	oukpne4ypa4v	7895d218-d2e2-44d2-b135-42ca8c557548
00000000-0000-0000-0000-000000000000	264	r272baholpqu	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-28 23:06:03.854074-04	2026-08-28 23:06:03.854074-04	\N	4dd4ec77-fd67-402d-a2f8-7ff0a4ffc88f
00000000-0000-0000-0000-000000000000	169	5d24dkm4jc6m	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-14 22:31:28.335022-04	2026-08-15 00:11:59.041195-04	t32puwbcgj4j	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	262	3z65inwz3cyj	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-28 16:10:32.190282-04	2026-08-28 23:16:23.529786-04	neulpm6bnhj7	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	265	huodov6fdf6o	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	f	2026-08-28 23:16:23.538397-04	2026-08-28 23:16:23.538397-04	3z65inwz3cyj	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	179	w4d52bytdds7	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-14 23:35:00.239795-04	2026-08-15 00:43:17.82418-04	fs4v7jnlkbgb	1c4ea36e-2852-454b-bd60-44daa7e2880e
00000000-0000-0000-0000-000000000000	266	eufl54cknjxc	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-28 23:17:33.80429-04	2026-08-28 23:17:33.80429-04	\N	a966d882-959e-4647-9099-c668e88dc34b
00000000-0000-0000-0000-000000000000	194	jmmp6fkcerft	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	f	2026-08-15 00:45:51.070428-04	2026-08-15 00:45:51.070428-04	\N	19ca9914-7d13-4e4f-9ced-ef6f7d419988
00000000-0000-0000-0000-000000000000	267	nzxgujykvxfa	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-28 23:22:40.999298-04	2026-08-28 23:22:40.999298-04	\N	55962b2b-e703-49b1-b5af-254bcb113e54
00000000-0000-0000-0000-000000000000	195	ksvtbzmpo3i3	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-08-15 00:47:48.92552-04	2026-08-15 10:15:03.033047-04	\N	c0a5f5c5-0c1a-41bf-9c1d-202789960485
00000000-0000-0000-0000-000000000000	259	56n2o7kujjtc	50471f55-7b80-41ea-86ee-4e91338d3864	t	2026-08-27 12:39:10.043263-04	2026-08-29 07:35:00.020942-04	gnwghjpg2nsh	3686bc9b-de1b-4b9a-a4de-7df5e8f9169c
00000000-0000-0000-0000-000000000000	216	clrglyjzjmti	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-20 23:16:36.666536-04	2026-08-21 11:28:27.164116-04	wjywn6fgfge5	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	230	6y77wq37ftba	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-21 11:28:27.171637-04	2026-08-21 13:15:30.945365-04	clrglyjzjmti	c9fc70f5-c7d6-4c5c-be40-279164466307
00000000-0000-0000-0000-000000000000	268	rboogvuvvisx	50471f55-7b80-41ea-86ee-4e91338d3864	f	2026-08-29 07:35:00.033529-04	2026-08-29 07:35:00.033529-04	56n2o7kujjtc	3686bc9b-de1b-4b9a-a4de-7df5e8f9169c
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.schema_migrations (version) FROM stdin;
20171026211738
20171026211808
20171026211834
20180103212743
20180108183307
20180119214651
20180125194653
00
20210710035447
20210722035447
20210730183235
20210909172000
20210927181326
20211122151130
20211124214934
20211202183645
20220114185221
20220114185340
20220224000811
20220323170000
20220429102000
20220531120530
20220614074223
20220811173540
20221003041349
20221003041400
20221011041400
20221020193600
20221021073300
20221021082433
20221027105023
20221114143122
20221114143410
20221125140132
20221208132122
20221215195500
20221215195800
20221215195900
20230116124310
20230116124412
20230131181311
20230322519590
20230402418590
20230411005111
20230508135423
20230523124323
20230818113222
20230914180801
20231027141322
20231114161723
20231117164230
20240115144230
20240214120130
20240306115329
20240314092811
20240427152123
20240612123726
20240729123726
20240802193726
20240806073726
20241009103726
20250717082212
20250731150234
20250804100000
20250901200500
20250903112500
20250904133000
20250925093508
20251007112900
20251104100000
20251111201300
20251201000000
20260115000000
20260121000000
20260219120000
20260302000000
20260625000000
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag, oauth_client_id, refresh_token_hmac_key, refresh_token_counter, scopes) FROM stdin;
19ca9914-7d13-4e4f-9ced-ef6f7d419988	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	2026-08-15 00:45:51.049322-04	2026-08-15 00:45:51.049322-04	\N	aal1	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Mobile Safari/537.36	38.188.25.146	\N	\N	\N	\N	\N
6e1e362d-ae2d-460c-8186-7b06b180362f	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-26 11:00:14.288697-04	2026-08-26 17:31:26.896816-04	\N	aal1	\N	2026-08-26 21:31:26.896641	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.1 Mobile/15E148 Safari/604.1	38.9.22.38	\N	\N	\N	\N	\N
c0a5f5c5-0c1a-41bf-9c1d-202789960485	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	2026-08-15 00:47:48.919704-04	2026-08-23 18:10:02.756839-04	\N	aal1	\N	2026-08-23 22:10:02.75671	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Mobile Safari/537.36	38.188.24.233	\N	\N	\N	\N	\N
7895d218-d2e2-44d2-b135-42ca8c557548	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 15:24:01.445858-04	2026-08-28 16:27:45.341831-04	\N	aal1	\N	2026-08-28 20:27:45.341732	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1	38.9.19.112	\N	\N	\N	\N	\N
4dd4ec77-fd67-402d-a2f8-7ff0a4ffc88f	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 23:06:03.816484-04	2026-08-28 23:06:03.816484-04	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	38.188.24.129	\N	\N	\N	\N	\N
1c4ea36e-2852-454b-bd60-44daa7e2880e	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	2026-08-13 22:11:12.471878-04	2026-08-26 08:56:21.182668-04	\N	aal1	\N	2026-08-26 12:56:21.182555	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	128.201.114.145	\N	\N	\N	\N	\N
c9fc70f5-c7d6-4c5c-be40-279164466307	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	2026-08-11 23:27:16.781414-04	2026-08-28 23:16:23.560921-04	\N	aal1	\N	2026-08-29 03:16:23.560805	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3	38.9.19.25	\N	\N	\N	\N	\N
b7bd8e04-e683-475f-a93c-3a0b134a6d8f	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-26 10:55:18.782091-04	2026-08-26 10:55:18.782091-04	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1	38.9.19.25	\N	\N	\N	\N	\N
a966d882-959e-4647-9099-c668e88dc34b	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 23:17:33.796326-04	2026-08-28 23:17:33.796326-04	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/3.9.3  Bluefy/3.9.3	38.9.19.25	\N	\N	\N	\N	\N
55962b2b-e703-49b1-b5af-254bcb113e54	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 23:22:40.959499-04	2026-08-28 23:22:40.959499-04	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1	38.9.19.25	\N	\N	\N	\N	\N
3686bc9b-de1b-4b9a-a4de-7df5e8f9169c	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-26 10:26:50.213963-04	2026-08-29 07:35:00.052319-04	\N	aal1	\N	2026-08-29 11:35:00.052211	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0	38.9.19.25	\N	\N	\N	\N	\N
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sso_providers (id, resource_id, created_at, updated_at, disabled) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
00000000-0000-0000-0000-000000000000	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	authenticated	authenticated	misael14@gmail.com	$2a$10$weStFflgXOp81yaxIo8ni.l8UypkZTcKXg4PcrItRcSoO.hY.QP46	2026-08-11 23:25:45.870644-04	\N		\N		\N			\N	2026-08-11 23:27:16.780197-04	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-08-11 23:25:45.847603-04	2026-08-28 23:16:23.54631-04	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	50471f55-7b80-41ea-86ee-4e91338d3864	authenticated	authenticated	admin@cacao.com	$2a$10$QqVsNIR5pPGBkINSDraeQusBOT7CR1wfwIesIJlt2VD0qVKYFG4Vy	2026-07-04 15:51:10.955031-04	\N		\N		\N			\N	2026-08-28 23:22:40.958318-04	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-07-04 15:51:10.946365-04	2026-08-29 07:35:00.041981-04	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	authenticated	authenticated	adriel@gmail.com	$2a$10$XZ6x8AeS1JDDuOEtWg8HIOdG75xXjpa2spmQyjh5/ozSX3hkTfYsC	2026-07-08 19:30:19.666443-04	\N		\N		\N			\N	2026-08-15 00:47:48.919573-04	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-07-08 19:30:19.633925-04	2026-08-26 08:56:21.168024-04	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.webauthn_challenges (id, user_id, challenge_type, session_data, created_at, expires_at) FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.webauthn_credentials (id, user_id, credential_id, public_key, attestation_type, aaguid, sign_count, transports, backup_eligible, backed_up, friendly_name, created_at, updated_at, last_used_at) FROM stdin;
\.


--
-- Data for Name: abono_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abono_proveedor (id, proveedor_id, compra_id, monto, metodo_pago, registrado_por, nota, fecha, created_at, jornada_id) FROM stdin;
c3e9699d-65c0-4db1-aa7a-08000f9efc80	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	8d866433-9b61-49ee-9544-4d35ee651b7a	5000.00	efectivo	74aa956e-5a01-4633-aebf-165e9e933974	\N	2026-08-02 15:06:58.589886-04	2026-08-02 15:06:58.589886-04	628ad2d2-0634-4996-9d42-fb8b383ecb3b
77bf497d-6d64-4821-9e40-67d7f1a4ef8c	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	8d866433-9b61-49ee-9544-4d35ee651b7a	6000.00	efectivo	74aa956e-5a01-4633-aebf-165e9e933974	\N	2026-08-02 21:13:06.775047-04	2026-08-02 21:13:06.775047-04	628ad2d2-0634-4996-9d42-fb8b383ecb3b
a65faa21-c554-45fd-a507-66e6702ef94c	1cec08a2-130e-46ed-b658-2e142d92b0b0	743a332b-9109-4303-9d23-f0dbc6509a98	32000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:58:05.664-04	2026-08-13 11:58:06.061808-04	\N
2cd9fcfe-0a6d-471f-8fb6-ececb1595e91	1cec08a2-130e-46ed-b658-2e142d92b0b0	743a332b-9109-4303-9d23-f0dbc6509a98	32000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:58:44.451-04	2026-08-13 11:58:44.575326-04	\N
15ca04da-7d95-4a6c-ad06-3bba11fcb759	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	4f111f4f-41d7-4faf-a6ce-d6235f3db241	50000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:58:54.5-04	2026-08-13 11:58:54.625599-04	\N
8c92ebd8-02eb-4f14-a76d-ec06079753dc	c5a2a889-112d-4a36-89f0-88ea0bbc3c96	e7e7398a-5873-44ce-bcf3-ed2152402342	47500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:59:02.551-04	2026-08-13 11:59:02.682529-04	\N
9bfa6203-ca02-44ff-98d6-3f58b96895d6	a52f733a-1268-4cb4-86e9-d2ae944d2008	c67a12b4-225c-4a9d-848c-74d004089928	28500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:59:10.318-04	2026-08-13 11:59:10.452861-04	\N
60f90234-508f-4bf2-8418-e6bb7cfb470d	a52f733a-1268-4cb4-86e9-d2ae944d2008	c67a12b4-225c-4a9d-848c-74d004089928	28500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:59:29.37-04	2026-08-13 11:59:29.51884-04	\N
45705960-81b2-4bde-beb0-c9c32ea1f163	1cec08a2-130e-46ed-b658-2e142d92b0b0	743a332b-9109-4303-9d23-f0dbc6509a98	32000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 11:59:57.239-04	2026-08-13 11:59:57.374802-04	\N
92ec25c5-43af-49ee-8c0e-ad3638c7efe2	deee5e9b-9d05-4388-a27c-860fcd0712d9	3d76e27d-2ef9-4806-8e15-8e4d7b1b5ba9	16500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 12:00:05.423-04	2026-08-13 12:00:05.55496-04	\N
f2a39bb7-612e-4d20-8d3f-b397eb4fab97	a52f733a-1268-4cb4-86e9-d2ae944d2008	c67a12b4-225c-4a9d-848c-74d004089928	28500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 12:00:11.69-04	2026-08-13 12:00:11.817899-04	\N
5ba3e7b7-3f88-4f79-a36b-f9a4694b2a57	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	4f111f4f-41d7-4faf-a6ce-d6235f3db241	50000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 12:00:17.874-04	2026-08-13 12:00:18.006776-04	\N
fc5ab9a7-c638-4e85-915f-8854eaa1fe5f	c5a2a889-112d-4a36-89f0-88ea0bbc3c96	e7e7398a-5873-44ce-bcf3-ed2152402342	47500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 12:00:28.826-04	2026-08-13 12:00:28.954489-04	\N
b9b3a3a5-d898-4a8c-8d84-000b129a96b9	0abed074-d391-433f-9588-11ffe34a2644	a32e7e88-5d25-40a4-baaa-767952aaa465	25000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 12:00:35.26-04	2026-08-13 12:00:35.394401-04	\N
5e36172d-ddf2-4c96-a0e9-10cded4b1861	1cec08a2-130e-46ed-b658-2e142d92b0b0	743a332b-9109-4303-9d23-f0dbc6509a98	32000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 17:43:50.085-04	2026-08-13 17:43:50.287051-04	\N
fd45bf79-3eb0-4bbd-aabb-342d22db8961	deee5e9b-9d05-4388-a27c-860fcd0712d9	3d76e27d-2ef9-4806-8e15-8e4d7b1b5ba9	16500.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 17:44:09.084-04	2026-08-13 17:44:09.377209-04	\N
6b85dda9-cade-4b5c-a3f7-afaa1718d9da	0abed074-d391-433f-9588-11ffe34a2644	a32e7e88-5d25-40a4-baaa-767952aaa465	25000.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-13 17:44:55.969-04	2026-08-13 17:44:56.22944-04	\N
f4d349d3-b75d-4a71-9884-0a14822494c0	4bd35246-1332-49db-89d2-db13ae054ca7	55b1f326-e12f-4e7c-8beb-3d14e1f13b02	8000.00	transferencia	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:34:44.556-04	2026-08-13 21:34:48.304172-04	\N
318e9b98-a084-4ecc-9045-c2e66ac35d7d	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	4f111f4f-41d7-4faf-a6ce-d6235f3db241	50000.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:35:03.165-04	2026-08-13 21:35:05.714893-04	\N
697bf04f-9e63-4d79-9e1f-d19e41efe5ab	c5a2a889-112d-4a36-89f0-88ea0bbc3c96	e7e7398a-5873-44ce-bcf3-ed2152402342	47500.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:35:17.917-04	2026-08-13 21:35:23.341555-04	\N
e3d37e41-bbc7-4612-b33c-7d5af3bf3714	a52f733a-1268-4cb4-86e9-d2ae944d2008	c67a12b4-225c-4a9d-848c-74d004089928	28500.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:35:37.457-04	2026-08-13 21:35:40.273606-04	\N
bfc9731f-7576-46bb-a1e4-17c4b93d811d	0abed074-d391-433f-9588-11ffe34a2644	a32e7e88-5d25-40a4-baaa-767952aaa465	25000.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:35:57.894-04	2026-08-13 21:36:00.359216-04	\N
b282a4be-5173-4e9a-9c0f-ac001cc3c23c	deee5e9b-9d05-4388-a27c-860fcd0712d9	3d76e27d-2ef9-4806-8e15-8e4d7b1b5ba9	16500.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:36:12.373-04	2026-08-13 21:36:17.765272-04	\N
ab948e48-7139-4fa3-ada6-fe0cf7cadf78	1cec08a2-130e-46ed-b658-2e142d92b0b0	743a332b-9109-4303-9d23-f0dbc6509a98	32000.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-13 21:36:28.098-04	2026-08-13 21:36:30.635548-04	\N
477b155a-8736-47b0-b2d8-a176fbfd1741	b860493f-3165-4776-a9e3-84e2cb21f4b7	ceb1d43e-4d3e-4e76-836a-c4a9265e68b6	1558.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 08:52:58.525-04	2026-08-21 08:52:58.746839-04	5d10e460-88c1-4760-a241-d86df18434c6
3693c1ae-5deb-4daf-b472-a5d8a6ea487c	489128b6-9006-4ac6-a6ea-1c7ed6f7ee47	5f905b0e-103e-438e-88f2-68bd70af0d63	2565.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 08:53:06.522-04	2026-08-21 08:53:06.895381-04	5d10e460-88c1-4760-a241-d86df18434c6
e0e176fc-71f5-413a-b6bc-86ae1d31b24a	49a0305a-054a-4698-a216-f35bf9e46a7a	24efb4fb-5e4d-44ae-85b3-b1f7b1c9ffed	3116.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 08:53:15.311-04	2026-08-21 08:53:15.445775-04	5d10e460-88c1-4760-a241-d86df18434c6
73ba29fc-2175-4077-8565-2756e65d0b55	063b5ad5-340c-447e-8999-9e1f461e1982	cbae8954-8804-4053-913b-f0dcfdbe5f78	2755.00	efectivo	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 08:53:24.71-04	2026-08-21 08:53:24.843339-04	5d10e460-88c1-4760-a241-d86df18434c6
3ff3ebe6-25d5-4dde-83b3-638109358e49	2a554d7a-10f1-498a-9672-432fb13db92c	0aa6fc23-05fb-423c-90f7-883d50684496	252110.00	efectivo	2b5262e6-1cbc-47f6-a851-41bad680d7d7	\N	2026-08-25 15:31:43.792-04	2026-08-25 15:31:44.04108-04	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd
\.


--
-- Data for Name: cambio_tasa_prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cambio_tasa_prestamo (id, prestamo_id, tasa_anterior, tasa_nueva, tipo_anterior, tipo_nuevo, interes_agregado, motivo, cambiado_por, created_at) FROM stdin;
\.


--
-- Data for Name: cobro_importadora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cobro_importadora (id, venta_id, importadora_id, monto, metodo_pago, referencia, registrado_por, fecha, created_at) FROM stdin;
f4dae272-e0f0-436f-af99-0019b5ddf17f	41e20398-7518-471e-b9a8-2d4b66c15ae9	6e713251-0250-42a7-bd38-9775d2559ce0	600000.00	cheque	\N	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 13:11:15.420611-04	2026-08-21 13:11:15.420611-04
\.


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compra (id, proveedor_id, vendedor_id, precio_diario_id, precio_snapshot, cantidad, unidad, cantidad_kg, total, estado_sync, timestamp_local, timestamp_sync, dispositivo_id, nota, anulada, created_at, tipo_cacao, precio_quintal_snapshot, lote_secado_id, estado_pago, monto_pagado, saldo_pagar, precio_manual, contenedor_id, peso_bascula_kg, jornada_id, llego_tarde, anulada_en, anulada_por, motivo_anulacion) FROM stdin;
8d866433-9b61-49ee-9544-4d35ee651b7a	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	1.000	quintal_baba	125.0000	11000.00	sincronizado	2026-08-02 15:00:45.028-04	\N	c50ffc5d-bf1e-4097-8836-4e13535a0d7c	\N	f	2026-08-02 15:00:52.466757-04	baba	11000.0000	\N	pagado	11000.00	0.00	f	\N	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
c8b2ff37-ac9d-43ba-8e21-c75c6cd9c36d	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	5.000	contenedor	205.0000	18040.00	sincronizado	2026-08-02 21:11:51.4-04	\N	325ef744-4d45-473f-be82-3b558b300052	\N	f	2026-08-02 21:12:30.423547-04	baba	11000.0000	\N	pagado	18040.00	0.00	f	a1000000-0000-0000-0000-000000000001	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
c2d2061b-decc-4f83-bbd4-9f1f7c332b6a	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	1.000	quintal_baba	125.0000	11000.00	sincronizado	2026-08-02 21:10:58.921-04	\N	325ef744-4d45-473f-be82-3b558b300052	\N	f	2026-08-02 21:11:06.563564-04	baba	11000.0000	\N	pagado	11000.00	0.00	f	\N	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
6470d439-6e28-43aa-87e9-2a19a2b91834	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	1.000	quintal_baba	125.0000	11000.00	sincronizado	2026-08-02 19:54:40.713-04	\N	325ef744-4d45-473f-be82-3b558b300052	\N	f	2026-08-02 19:54:48.071597-04	baba	11000.0000	\N	pagado	11000.00	0.00	f	\N	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
e1331800-3491-4a54-8626-b5869ef4ce06	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	1.000	contenedor	41.0000	3608.00	sincronizado	2026-08-02 15:40:28.013-04	\N	f69fcd13-cb0e-445a-82cf-814a0e0d0eef	\N	f	2026-08-02 15:40:53.380577-04	baba	11000.0000	\N	pagado	3608.00	0.00	f	a1000000-0000-0000-0000-000000000001	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
8139723b-45b6-4466-92b9-ef9a98ecba72	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5fa89621-16aa-434c-8b06-554477aeb53f	88.0000	1.000	contenedor	41.0000	3608.00	sincronizado	2026-08-02 15:05:12.461-04	\N	f69fcd13-cb0e-445a-82cf-814a0e0d0eef	\N	f	2026-08-02 15:05:21.340023-04	baba	11000.0000	\N	pagado	3608.00	0.00	f	a1000000-0000-0000-0000-000000000001	\N	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f	\N	\N	\N
990341ae-67d4-4364-8ace-0664c1907107	e61ac931-031a-4058-a4c7-47dbf1a196da	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5d5d4764-088c-4f65-b54b-546be44f3448	76.0000	0.500	quintal_baba	62.5000	4750.00	sincronizado	2026-08-08 16:10:04.876-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-08 16:10:04.993219-04	baba	9500.0000	\N	pagado	4750.00	0.00	f	\N	\N	e3ed5169-28c3-4635-8309-cda8a20ffdde	f	\N	\N	\N
07b8416e-c73a-4573-9afb-16efc7541d4f	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	5d5d4764-088c-4f65-b54b-546be44f3448	76.0000	0.500	quintal_baba	62.5000	4750.00	sincronizado	2026-08-08 16:09:35.175-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-08 16:09:35.39774-04	baba	9500.0000	\N	pagado	4750.00	0.00	f	\N	\N	e3ed5169-28c3-4635-8309-cda8a20ffdde	f	\N	\N	\N
6755042d-9cd1-4b7a-a6ec-f51761672d05	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	2cfe0d93-a27f-4ac6-a3ac-acf7ee04f24c	76.0000	0.660	quintal_baba	82.5000	6270.00	sincronizado	2026-08-11 16:39:12.26-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-11 16:39:52.314341-04	baba	9500.0000	\N	pagado	6270.00	0.00	f	\N	\N	f600dca4-6139-4471-aaf1-c16035f4ce92	f	\N	\N	\N
3fdf0bd3-597b-4382-b0a3-7406a721f3ac	\N	2530a2db-1e70-4dfc-8d61-c5310112b4ff	2cfe0d93-a27f-4ac6-a3ac-acf7ee04f24c	76.0000	0.500	quintal_baba	62.5000	4750.00	sincronizado	2026-08-11 16:34:14.285-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-11 16:34:14.632683-04	baba	9500.0000	\N	pagado	4750.00	0.00	f	\N	\N	f600dca4-6139-4471-aaf1-c16035f4ce92	f	\N	\N	\N
4f111f4f-41d7-4faf-a6ce-d6235f3db241	c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	2530a2db-1e70-4dfc-8d61-c5310112b4ff	bab62731-b92c-4819-a57d-edd690331d1f	80.0000	5.000	quintal_baba	625.0000	50000.00	sincronizado	2026-08-10 09:00:06.972-04	\N	325ef744-4d45-473f-be82-3b558b300052	\N	f	2026-08-10 09:00:33.304554-04	baba	10000.0000	\N	pagado	50000.00	0.00	f	\N	\N	b9377f71-12fd-4143-9227-9c897c40affe	f	\N	\N	\N
4fb7b456-b22c-4601-95ab-c62d57b995ba	c0f7172c-d773-425f-8fed-5f00fe4837fd	89db70a1-e8ec-408f-a87a-906a65a9a990	56b75c02-4bf8-4948-b4d7-96243dee9628	76.0000	0.160	quintal_baba	20.0000	1520.00	sincronizado	2026-08-11 23:32:34.73-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-11 23:32:35.165677-04	baba	9500.0000	\N	pagado	1520.00	0.00	f	\N	\N	f600dca4-6139-4471-aaf1-c16035f4ce92	f	\N	\N	\N
68d423fa-b449-447f-a79c-956003ca9bea	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	56b75c02-4bf8-4948-b4d7-96243dee9628	76.0000	2.000	contenedor	82.0000	6232.00	sincronizado	2026-08-11 23:28:43.409-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-11 23:28:43.697259-04	baba	9500.0000	\N	pagado	6232.00	0.00	f	a1000000-0000-0000-0000-000000000001	\N	f600dca4-6139-4471-aaf1-c16035f4ce92	f	\N	\N	\N
5014811f-036f-4585-8c94-a2a7bde98b45	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	7a1f0aef-749b-4d91-932c-59f3de641322	76.0000	0.330	quintal_baba	41.2500	3135.00	sincronizado	2026-08-15 00:12:18.908-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-15 00:12:19.154894-04	baba	9500.0000	\N	pagado	3135.00	0.00	f	\N	\N	d9ca5818-4fdf-4ebd-9b5b-60aadb6a81b9	f	\N	\N	\N
93703a85-c2cd-4c37-b2bb-31ff69e0d3ec	c262506f-26a3-495d-9c59-556f5f4bab58	89db70a1-e8ec-408f-a87a-906a65a9a990	8c06c1e5-26bf-4c9f-88b9-b6205755f10e	80.0000	3.000	quintal_baba	375.0000	30000.00	sincronizado	2026-08-15 00:26:53.937-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-15 00:26:54.261596-04	baba	10000.0000	\N	pagado	30000.00	0.00	t	\N	\N	bc05cb9d-268c-4d4f-a5d5-59815436d99a	f	\N	\N	\N
f2b3f407-4a23-47ef-8d6f-3231f4ba863f	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	3e2da71e-65c1-455b-84bd-edf4e6533afc	76.0000	10.000	contenedor	6.6000	501.60	sincronizado	2026-08-15 00:46:45.101-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-15 00:46:45.289319-04	baba	9500.0000	\N	pagado	501.60	0.00	f	a1000000-0000-0000-0000-000000000004	\N	bc05cb9d-268c-4d4f-a5d5-59815436d99a	f	\N	\N	\N
e7e7398a-5873-44ce-bcf3-ed2152402342	c5a2a889-112d-4a36-89f0-88ea0bbc3c96	89db70a1-e8ec-408f-a87a-906a65a9a990	d9b8c649-cc91-445e-8687-2b676c22e5f9	76.0000	5.000	quintal_baba	625.0000	47500.00	sincronizado	2026-08-12 17:55:48.894-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-12 17:55:49.089849-04	baba	9500.0000	\N	pagado	47500.00	0.00	f	\N	\N	0e641f66-5e9d-4337-a987-92e4bdb20f61	f	\N	\N	\N
c67a12b4-225c-4a9d-848c-74d004089928	a52f733a-1268-4cb4-86e9-d2ae944d2008	89db70a1-e8ec-408f-a87a-906a65a9a990	f0279557-83f8-42df-927b-8d70a9e31ce2	76.0000	3.000	quintal_baba	375.0000	28500.00	sincronizado	2026-08-13 11:51:42.867-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-13 11:51:43.070979-04	baba	9500.0000	\N	pagado	28500.00	0.00	f	\N	\N	480d5dec-d688-4984-96f8-48ce453cc315	f	\N	\N	\N
a32e7e88-5d25-40a4-baaa-767952aaa465	0abed074-d391-433f-9588-11ffe34a2644	89db70a1-e8ec-408f-a87a-906a65a9a990	f0279557-83f8-42df-927b-8d70a9e31ce2	200.0000	2.500	quintal_seco	125.0000	25000.00	sincronizado	2026-08-13 11:52:23.052-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-13 11:52:23.251163-04	seco	10000.0000	\N	pagado	25000.00	0.00	f	\N	\N	480d5dec-d688-4984-96f8-48ce453cc315	f	\N	\N	\N
3d76e27d-2ef9-4806-8e15-8e4d7b1b5ba9	deee5e9b-9d05-4388-a27c-860fcd0712d9	89db70a1-e8ec-408f-a87a-906a65a9a990	f0279557-83f8-42df-927b-8d70a9e31ce2	76.0000	7.000	quintal_baba	875.0000	66500.00	sincronizado	2026-08-13 11:54:12.876-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-13 11:54:13.249008-04	baba	9500.0000	\N	pagado	66500.00	0.00	f	\N	\N	480d5dec-d688-4984-96f8-48ce453cc315	f	\N	\N	\N
743a332b-9109-4303-9d23-f0dbc6509a98	1cec08a2-130e-46ed-b658-2e142d92b0b0	89db70a1-e8ec-408f-a87a-906a65a9a990	f0279557-83f8-42df-927b-8d70a9e31ce2	76.0000	6.000	quintal_baba	750.0000	57000.00	sincronizado	2026-08-13 11:55:37.807-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-13 11:55:38.070851-04	baba	9500.0000	\N	pagado	57000.00	0.00	f	\N	\N	480d5dec-d688-4984-96f8-48ce453cc315	f	\N	\N	\N
55b1f326-e12f-4e7c-8beb-3d14e1f13b02	4bd35246-1332-49db-89d2-db13ae054ca7	89db70a1-e8ec-408f-a87a-906a65a9a990	f0279557-83f8-42df-927b-8d70a9e31ce2	76.0000	4.000	quintal_baba	500.0000	38000.00	sincronizado	2026-08-13 18:56:51.649-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-13 18:56:52.028471-04	baba	9500.0000	\N	pagado	38000.00	0.00	f	\N	\N	480d5dec-d688-4984-96f8-48ce453cc315	f	\N	\N	\N
ceb1d43e-4d3e-4e76-836a-c4a9265e68b6	b860493f-3165-4776-a9e3-84e2cb21f4b7	89db70a1-e8ec-408f-a87a-906a65a9a990	4ef678e8-2720-4377-961b-26da64779cc2	76.0000	0.164	quintal_baba	20.5000	1558.00	sincronizado	2026-08-19 17:40:45.81-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-19 17:40:48.117169-04	baba	9500.0000	\N	pagado	1558.00	0.00	f	\N	\N	bc05cb9d-268c-4d4f-a5d5-59815436d99a	f	\N	\N	\N
5f905b0e-103e-438e-88f2-68bd70af0d63	489128b6-9006-4ac6-a6ea-1c7ed6f7ee47	89db70a1-e8ec-408f-a87a-906a65a9a990	ca3ac3a2-e24f-4eb6-b077-34dbcb87e722	76.0000	0.270	quintal_baba	33.7500	2565.00	sincronizado	2026-08-14 16:49:11.418-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-14 16:49:11.589505-04	baba	9500.0000	\N	pagado	2565.00	0.00	f	\N	\N	5a277d5a-253a-452c-aa25-b5a97e33905b	f	\N	\N	\N
24efb4fb-5e4d-44ae-85b3-b1f7b1c9ffed	49a0305a-054a-4698-a216-f35bf9e46a7a	89db70a1-e8ec-408f-a87a-906a65a9a990	ca3ac3a2-e24f-4eb6-b077-34dbcb87e722	76.0000	1.000	contenedor	41.0000	3116.00	sincronizado	2026-08-14 16:46:02.158-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-14 16:46:02.64208-04	baba	9500.0000	\N	pagado	3116.00	0.00	f	a1000000-0000-0000-0000-000000000001	\N	5a277d5a-253a-452c-aa25-b5a97e33905b	f	\N	\N	\N
cbae8954-8804-4053-913b-f0dcfdbe5f78	063b5ad5-340c-447e-8999-9e1f461e1982	89db70a1-e8ec-408f-a87a-906a65a9a990	ca3ac3a2-e24f-4eb6-b077-34dbcb87e722	76.0000	0.290	quintal_baba	36.2500	2755.00	sincronizado	2026-08-14 17:05:11.226-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-14 17:05:11.456957-04	baba	9500.0000	\N	pagado	2755.00	0.00	f	\N	\N	5a277d5a-253a-452c-aa25-b5a97e33905b	f	\N	\N	\N
e9c705d1-115a-4c0f-b6d0-a8825e120217	c5a2a889-112d-4a36-89f0-88ea0bbc3c96	89db70a1-e8ec-408f-a87a-906a65a9a990	bb3c5d68-11d4-4d6c-870f-965761689f1b	76.0000	8.000	quintal_baba	1000.0000	76000.00	sincronizado	2026-08-21 13:17:00.601-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-21 13:17:04.68007-04	baba	9500.0000	\N	pagado	76000.00	0.00	f	\N	\N	5d10e460-88c1-4760-a241-d86df18434c6	f	\N	\N	\N
cb32c1c7-efbe-413b-8c4c-895482cc1af3	063b5ad5-340c-447e-8999-9e1f461e1982	89db70a1-e8ec-408f-a87a-906a65a9a990	bb3c5d68-11d4-4d6c-870f-965761689f1b	76.0000	30.000	quintal_baba	3750.0000	285000.00	sincronizado	2026-08-21 23:35:52.143-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-21 23:35:52.512134-04	baba	9500.0000	\N	pagado	285000.00	0.00	f	\N	\N	5d10e460-88c1-4760-a241-d86df18434c6	f	\N	\N	\N
575301e5-54a5-44f9-b685-429ba346efc9	b249aa85-eb6c-4875-a8ab-2b56bff9c420	89db70a1-e8ec-408f-a87a-906a65a9a990	bb3c5d68-11d4-4d6c-870f-965761689f1b	76.0000	15.000	quintal_baba	1875.0000	142500.00	sincronizado	2026-08-21 23:36:25.727-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-21 23:36:26.033781-04	baba	9500.0000	\N	pagado	142500.00	0.00	f	\N	\N	5d10e460-88c1-4760-a241-d86df18434c6	f	\N	\N	\N
0d991cdc-0bdd-4d6b-a531-b2546048f4d7	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	42.460	quintal_baba	5307.5000	360910.00	sincronizado	2026-08-25 15:30:25.633-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-25 15:30:25.835392-04	baba	8500.0000	\N	pagado	360910.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	f	\N	\N	\N
0aa6fc23-05fb-423c-90f7-883d50684496	2a554d7a-10f1-498a-9672-432fb13db92c	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	42.460	quintal_baba	5307.5000	360910.00	sincronizado	2026-08-25 15:31:01.12-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-25 15:31:01.612614-04	baba	8500.0000	\N	pagado	360910.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	f	\N	\N	\N
63d992f6-17c1-47f3-bd35-49581aad15e5	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-25 15:34:34.465-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-25 15:34:34.62706-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	f	\N	\N	\N
91ee6e91-4dd9-41c4-9a86-f8f5a43a8268	2a554d7a-10f1-498a-9672-432fb13db92c	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	29.640	quintal_baba	3705.0000	251940.00	sincronizado	2026-08-25 15:39:29.143-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-25 15:39:29.320481-04	baba	8500.0000	\N	pagado	251940.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	f	\N	\N	\N
75e39a44-a43b-43e8-b202-12cb48e334cb	2287a99e-37a4-4d21-8b3c-d64c6317be74	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 11:06:22.084-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 11:06:22.340569-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
03f84668-6471-49c9-883a-6ebba70515bf	2287a99e-37a4-4d21-8b3c-d64c6317be74	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 11:17:08.56-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 11:17:08.735359-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
8ee54e66-ae25-447c-8771-8c706c718515	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 11:17:42.742-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 11:17:42.904314-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
0dec8488-42c7-4ebd-9bc7-914bcf0dc40a	063b5ad5-340c-447e-8999-9e1f461e1982	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 11:18:17.895-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 11:18:18.081853-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
d416b1cc-7dda-4e8d-9515-d30dc4e93536	\N	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 11:25:04.931-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 11:25:05.149417-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
7e80dd21-f71c-43db-9efc-b5981551c3ba	063b5ad5-340c-447e-8999-9e1f461e1982	89db70a1-e8ec-408f-a87a-906a65a9a990	f863e577-efc5-4c63-a28d-ea7f9c425e48	68.0000	1.000	quintal_baba	125.0000	8500.00	sincronizado	2026-08-26 18:23:31.57-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-26 18:23:31.785189-04	baba	8500.0000	\N	pagado	8500.00	0.00	f	\N	\N	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t	\N	\N	\N
c67e0437-ca41-4d4e-ab14-7ed03c121464	f0332d65-d20b-4408-9ea5-4783cbf9eae3	89db70a1-e8ec-408f-a87a-906a65a9a990	af117ff2-8923-4a58-a8f9-c2b3d1205898	84.0000	1.000	contenedor	41.0000	3444.00	sincronizado	2026-08-28 16:12:34.498-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-28 16:12:44.152033-04	baba	10500.0000	\N	pendiente	0.00	3444.00	t	a1000000-0000-0000-0000-000000000001	\N	f619410f-34b9-49ad-bdd7-a70a14e1d0f2	f	\N	\N	\N
a85a3e79-2fa2-402f-b852-3de2ebba38f0	f0332d65-d20b-4408-9ea5-4783cbf9eae3	89db70a1-e8ec-408f-a87a-906a65a9a990	af117ff2-8923-4a58-a8f9-c2b3d1205898	84.0000	1.000	contenedor	41.0000	3444.00	sincronizado	2026-08-28 16:23:15.852-04	\N	f3304311-17f9-4552-9e1a-b213b4ce4349	\N	f	2026-08-28 16:23:16.296557-04	baba	10500.0000	\N	pagado	3444.00	0.00	t	a1000000-0000-0000-0000-000000000001	\N	f619410f-34b9-49ad-bdd7-a70a14e1d0f2	f	\N	\N	\N
\.


--
-- Data for Name: condonacion_mora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condonacion_mora (id, prestamo_id, monto_condonado, motivo, autorizado_por, fecha, created_at) FROM stdin;
\.


--
-- Data for Name: config_sistema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.config_sistema (clave, valor, updated_at) FROM stdin;
negocio_logo_base64	data:image/jpeg;base64,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	2026-07-29 21:52:03.923525-04
equivalencias_version	4	2026-07-31 14:40:24.542155-04
prestamo_mora_activa	false	2026-08-01 17:20:25.026627-04
prestamo_mora_tasa_pct	5	2026-08-01 17:20:25.026627-04
prestamo_mora_dias_gracia	15	2026-08-01 17:20:25.026627-04
prestamo_tasas_disponibles	0,1.5,2.5,3,4	2026-08-01 17:20:25.026627-04
prestamo_mora_tipo	porcentaje_mensual	2026-08-01 17:20:39.305477-04
prestamo_mora_cargo_fijo	0	2026-08-01 17:20:39.305477-04
ticket_copia_acopiador	monto	2026-08-15 00:10:30.228628-04
ticket_copia_monto_min	100000	2026-08-15 00:32:27.484226-04
contenedores_version	8	2026-08-15 00:33:55.057288-04
negocio_nombre	OG Ovalles	2026-07-29 17:44:03.703738-04
negocio_rnc	1-33-72930-1	2026-07-29 17:44:03.977961-04
negocio_direccion	La Piragua, Gaspar Hernandez, Espaillat	2026-07-29 17:44:04.205359-04
negocio_telefono	809-000-0000	2026-07-29 17:44:04.308085-04
negocio_email	ovallesog@gmail.com	2026-07-29 17:44:04.424783-04
\.


--
-- Data for Name: contenedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contenedor (id, nombre, descripcion, activo, created_at) FROM stdin;
a1000000-0000-0000-0000-000000000001	Caja	Caja estándar de campo	t	2026-07-31 14:40:24.542155-04
a1000000-0000-0000-0000-000000000002	Cubeta	Cubeta de campo	t	2026-07-31 14:40:24.542155-04
a1000000-0000-0000-0000-000000000004	Saco grande	Saco de mayor capacidad	t	2026-07-31 14:40:24.542155-04
a1000000-0000-0000-0000-000000000005	Saco 1 caja	Saco de yute tradicional	t	2026-07-31 14:40:24.542155-04
a1000000-0000-0000-0000-000000000003	Saco medio QQ	Saco de menor capacidad	t	2026-07-31 14:40:24.542155-04
\.


--
-- Data for Name: contenedor_equivalencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contenedor_equivalencia (id, contenedor_id, tipo_cacao, equivalencia_kg, created_at) FROM stdin;
6fea7a92-3c63-49b3-b70b-29d6c9e0f22b	a1000000-0000-0000-0000-000000000001	seco	16.0000	2026-07-31 14:40:24.542155-04
b1e47d17-1ff6-45cd-8ab3-843356c3dfed	a1000000-0000-0000-0000-000000000001	baba	41.0000	2026-07-31 14:40:24.542155-04
650783f4-6ab8-4592-8796-97ab20a149f5	a1000000-0000-0000-0000-000000000002	seco	\N	2026-07-31 14:40:24.542155-04
3ffbef15-3413-477c-b2f8-caba3e564cd2	a1000000-0000-0000-0000-000000000002	baba	20.0000	2026-07-31 14:40:24.542155-04
39abab74-d8bf-4dba-a6f8-442493348c63	a1000000-0000-0000-0000-000000000004	seco	\N	2026-07-31 14:40:24.542155-04
d968ad22-4d03-4794-9b83-9182e9a15a6a	a1000000-0000-0000-0000-000000000004	baba	0.6600	2026-07-31 14:40:24.542155-04
93267baf-7cd3-4230-898a-9cf87658b7bd	a1000000-0000-0000-0000-000000000005	seco	\N	2026-07-31 14:40:24.542155-04
486e1de4-d8ef-4de2-87d5-1231653dd407	a1000000-0000-0000-0000-000000000005	baba	0.3300	2026-07-31 14:40:24.542155-04
00ebdec3-ad0c-4704-93e5-46ef5ce35115	a1000000-0000-0000-0000-000000000003	seco	\N	2026-07-31 14:40:24.542155-04
2cabd5a2-ddd5-4d58-b907-02facc09e6c2	a1000000-0000-0000-0000-000000000003	baba	0.5000	2026-07-31 14:40:24.542155-04
\.


--
-- Data for Name: cuota_prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuota_prestamo (id, prestamo_id, numero_cuota, fecha_vence, monto_capital, monto_interes, monto_total, pagado, fecha_pago, created_at) FROM stdin;
\.


--
-- Data for Name: desembolso_prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desembolso_prestamo (id, prestamo_id, monto, interes_generado, dias_restantes, fecha, registrado_por, nota, inicial, created_at) FROM stdin;
e4c6eb4b-c9a8-4143-8fa4-cd70aef5067e	00f0f10a-4dd9-4d66-aa98-2ec5d6cfc9f6	160000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
928f416c-70d1-4ae5-9594-749369102a98	adf3e377-fee1-4ccd-83fb-24b72a54d107	29000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
526ab9aa-0f20-4d19-830e-08ca0eff1a0c	a0f0ed56-2fad-4ac5-acf1-01e14d987dec	60000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
900f3328-3dde-44f4-974a-538662d1c11b	03a2c264-9653-44b0-9e9b-90209e8ccf29	19100.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
57c79219-7742-4e22-baec-89d3aa343c77	a5cf635a-6d0e-43cb-a071-3cbf07a69e4e	15000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
3bfb6027-11df-4c16-8a41-34920465d610	8ad67967-6973-4d8c-a836-12c15f317156	20000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
98ebb969-1f09-41cd-8f3a-9a1b3b20b22f	9d01542f-ff9b-4634-8d7a-703078a223d5	5000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
9971a5cc-0e93-4dc3-a9ba-40b3e4294193	bc360da9-d36c-4eb2-b0bc-8b047bf5c37d	87300.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
9ab4b4f2-6698-46a4-8b12-3b341c755110	3192029f-b9f1-4225-87e6-9cc118b294a9	79500.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
04e8024a-161b-4305-9e83-1e5215e573ba	a377f48a-91d3-4ecd-b566-5f8af2f2ebe1	93600.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
7693cb3a-59f2-4989-8637-c45b70781f4e	c183193e-6ed8-4652-bc7b-96e103b68a25	100000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
2c6fce3b-65a3-4e57-8b7a-b4c670e07f4f	ee5680f7-fedc-4aff-bae7-0721e928face	8800.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
9f2459f1-1d95-4b3f-a2a0-358603eb3138	852ecd09-60d7-4dcd-afa3-d482c61d0ad4	10000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
83de7420-98bd-4efb-b0ef-5461b50280c6	d1596b9b-0798-4218-a462-3105c5dd602e	18000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
27602df3-b451-4e34-86df-78d5d55494b7	611fd4d1-e1bc-490c-afdb-90c1ce13749e	1000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
0e2d3d1a-7904-49ce-b888-42feacb55554	0e21a6e7-9c5c-48a6-95ca-f7d779824b0f	38000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
02b52727-aecc-4b79-bed9-72308f80be05	4c920795-97ee-478e-b237-a2be4343248f	6500.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
2611957e-d20a-46b1-aaff-72b8307406dd	3c6957f8-385c-47ea-b609-163c6a1fc4a4	30000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
b3f7d6a3-bd6f-4c50-8625-0e7ddc54a67e	1ba58938-3549-469c-aa74-c0d9d024edf6	122400.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
333548fa-ba0d-4292-a872-a7151cfe3d32	aee5b04f-bf72-4d1f-8bcc-f185baf28049	15000.00	0.00	\N	2026-08-13 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 021)	t	2026-08-14 21:00:08.657615-04
fc90a0a7-84a0-4506-b77f-dbaaf77bc3c7	7295189e-4da2-4412-acf3-26abfc2810bf	38000.00	0.00	\N	2026-08-14 23:20:28.034149-04	50471f55-7b80-41ea-86ee-4e91338d3864	\N	f	2026-08-14 23:20:28.034149-04
4712ef10-363c-4021-8791-a8eda2dffa98	00f0f10a-4dd9-4d66-aa98-2ec5d6cfc9f6	25000.00	0.00	\N	2026-08-14 23:22:20.409234-04	50471f55-7b80-41ea-86ee-4e91338d3864	\N	f	2026-08-14 23:22:20.409234-04
4f0779c0-c1a5-4ed7-9b7d-e37e2bd224fa	adf3e377-fee1-4ccd-83fb-24b72a54d107	1000.00	0.00	\N	2026-08-15 00:07:17.379626-04	50471f55-7b80-41ea-86ee-4e91338d3864	\N	f	2026-08-15 00:07:17.379626-04
363e5cc9-24e3-4b58-9755-6669a1e4c684	94b0b72e-3a0a-40b1-b58c-198f113b34b9	65000.00	0.00	\N	2026-08-19 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 028)	t	2026-08-21 08:41:55.463222-04
18496feb-d56e-42e3-b746-f5399d3202c3	3ee9b33f-1466-4518-bc1a-50b1ae83cc12	185500.00	0.00	\N	2026-08-20 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 028)	t	2026-08-21 08:41:55.463222-04
e935008b-0459-4241-a06d-50a67b5cf7de	61713ca7-352d-418f-9fd1-3cc59b203847	200000.00	0.00	\N	2026-08-19 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 028)	t	2026-08-21 08:41:55.463222-04
066fdaaf-9c80-4cfe-8809-323404b087df	47c04727-45c8-4331-863b-c9f7a47ab934	15000.00	0.00	\N	2026-08-19 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 028)	t	2026-08-21 08:41:55.463222-04
e84b709c-4c13-470e-8c7f-26c3c1559b1c	b8ccf159-b277-4585-8801-9b989a73ca43	10000.00	0.00	\N	2026-08-19 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 028)	t	2026-08-21 08:41:55.463222-04
021e4d70-e51e-44f6-b701-6733fe30c9d1	7295189e-4da2-4412-acf3-26abfc2810bf	80000.00	0.00	\N	2026-08-14 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial (reconstruido por la migración 029)	t	2026-08-21 08:45:19.048935-04
8a209903-226f-4a49-a148-ee0d08813aaa	fe8a68af-822b-42d5-9cf1-8656c2327efc	10000.00	0.00	\N	2026-08-21 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-21 23:27:43.829023-04
c6cda5d8-d37e-4214-8454-9672a7333dba	0c370228-76b1-40e9-9367-5adc0b6e0222	284000.00	0.00	\N	2026-08-21 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-21 23:28:39.989483-04
39d25555-67e0-403e-9ad1-e3dd746c2666	941b7efc-8fd3-4b20-ae62-449ca6822e1b	75000.00	0.00	\N	2026-08-25 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-25 16:44:10.44067-04
061a1460-f7fd-433a-9d09-e440b0e1cf5b	7438e37c-a4bf-4261-8d45-34d3b27338fc	50000.00	0.00	\N	2026-08-26 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-26 10:49:19.875047-04
87eb6ab0-b8f4-4710-8f01-c7221a5fc6c1	3c4a7513-c0e7-4a33-bfe5-46508d583b62	20000.00	0.00	\N	2026-08-26 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-26 11:31:48.186306-04
6dff2e22-72c1-4564-bb0c-88e3e2d2ab0b	87877d68-0b12-4a18-b364-ce2fc10f83b2	5000.00	0.00	\N	2026-08-28 00:00:00-04	50471f55-7b80-41ea-86ee-4e91338d3864	Desembolso inicial	t	2026-08-28 23:19:28.024357-04
\.


--
-- Data for Name: finca_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.finca_proveedor (id, proveedor_id, tareas_sembradas, quintales_estimados_anio, variedad_cacao, ubicacion_finca, created_at, limite_credito_sugerido, limite_credito_aprobado, factor_riesgo, precio_referencia_qq, updated_at) FROM stdin;
5c1d96ac-406c-429c-b5a2-0e19947e0d40	4bd35246-1332-49db-89d2-db13ae054ca7	\N	180.00	\N	\N	2026-08-14 23:16:04.599082-04	144000.00	\N	0.10	8000.00	2026-08-14 23:16:02.82-04
\.


--
-- Data for Name: fondo_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fondo_diario (id, vendedor_id, fecha, monto_asignado, monto_pagado, diferencia, cerrado, jornada_id, sin_limite) FROM stdin;
18c74f8f-a45d-49f3-b531-4f031d06e501	2530a2db-1e70-4dfc-8d61-c5310112b4ff	2026-08-02	2000000.00	0.00	\N	f	628ad2d2-0634-4996-9d42-fb8b383ecb3b	f
d1910ef2-cc50-4ada-9710-5c6b24c63092	2530a2db-1e70-4dfc-8d61-c5310112b4ff	2026-08-11	50000.00	0.00	\N	f	f600dca4-6139-4471-aaf1-c16035f4ce92	f
b2bbb443-b68c-4440-8e3f-39688425d7c2	89db70a1-e8ec-408f-a87a-906a65a9a990	2026-08-13	500000.00	0.00	\N	f	\N	f
6ed52d9b-cd7a-41dc-be65-1bc2fd5bd18f	89db70a1-e8ec-408f-a87a-906a65a9a990	2026-08-25	345000.00	0.00	\N	f	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	t
\.


--
-- Data for Name: gasto_operativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gasto_operativo (id, categoria, descripcion, monto, fecha, comprobante_ref, registrado_por, created_at) FROM stdin;
7baf4190-60b0-44d8-b851-35f88a8b5445	combustible	2 CAMIONES TENARES	4500	2026-08-21	\N	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 08:38:45.639785-04
782a12ef-83fc-4f49-ae36-187aa37432d3	salarios	NOMINA	90000	2026-08-21	\N	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 08:39:31.438421-04
\.


--
-- Data for Name: importadora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.importadora (id, nombre, nombre_fiscal, rnc, telefono, email, direccion, activo, created_at) FROM stdin;
6e713251-0250-42a7-bd38-9775d2559ce0	COPROCASI	COPROCASI	131176143	8293427507	\N	CONUCO, SALCEDO	t	2026-08-21 08:24:25.115069-04
\.


--
-- Data for Name: jornada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jornada (id, numero, fecha_apertura, abierta_en, cerrada_en, estado, abierta_por, cerrada_por, precio_apertura_id, sintetica, nota, compras_count, kg_seco, kg_baba, rd_seco, rd_baba, rd_total, pagado_efectivo, deuda_generada, abonos_cobrados, detalle_vendedores, cuadre_calculado_en, recalculado_en, recalculado_por, created_at, cobros_prestamo) FROM stdin;
3b961f9d-0858-496d-90b2-4fd38572ecff	1	2026-07-30	2026-07-30 16:55:27-04	2026-07-31 19:50:07-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
1bd063c3-1b79-496f-bd4e-71679868f831	2	2026-07-31	2026-07-31 19:50:07-04	2026-08-02 14:57:00-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
628ad2d2-0634-4996-9d42-fb8b383ecb3b	3	2026-08-02	2026-08-02 14:57:00-04	2026-08-08 16:06:16-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
e3ed5169-28c3-4635-8309-cda8a20ffdde	4	2026-08-08	2026-08-08 16:06:16-04	2026-08-10 08:57:44-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
b9377f71-12fd-4143-9227-9c897c40affe	5	2026-08-10	2026-08-10 08:57:44-04	2026-08-11 16:31:43-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
f600dca4-6139-4471-aaf1-c16035f4ce92	6	2026-08-11	2026-08-11 16:31:43-04	2026-08-12 15:32:19-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
0e641f66-5e9d-4337-a987-92e4bdb20f61	7	2026-08-12	2026-08-12 15:32:19-04	2026-08-12 19:24:44.394187-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-12 19:24:44.394187-04	\N
d9ca5818-4fdf-4ebd-9b5b-60aadb6a81b9	8	2026-08-14	2026-08-14 23:02:08.351094-04	2026-08-15 00:21:34.934801-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	39e1d1bc-32ee-4417-92a3-18ef1fc89112	f	\N	1	0.0000	41.2500	0.00	3135.00	3135.00	3135.00	0.00	0.00	[{"kg": 41.2500, "rd": 3135.00, "deuda": 0.00, "pagado": 3135.00, "compras": 1, "vendedor": "Misael Thomas"}]	2026-08-15 00:21:34.934801-04	\N	\N	2026-08-14 23:02:08.351094-04	0.00
bc05cb9d-268c-4d4f-a5d5-59815436d99a	9	2026-08-15	2026-08-15 00:21:44.949373-04	2026-08-20 22:48:43.105956-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	4e96448e-1b55-481e-8a4e-e60cbfbfb0ee	f	\N	3	0.0000	402.1000	0.00	32059.60	32059.60	30501.60	1558.00	0.00	[{"kg": 402.1000, "rd": 32059.60, "deuda": 1558.00, "pagado": 30501.60, "compras": 3, "vendedor": "Misael Thomas"}]	2026-08-20 22:48:43.105956-04	\N	\N	2026-08-15 00:21:44.949373-04	0.00
480d5dec-d688-4984-96f8-48ce453cc315	11	2026-08-13	2026-08-13 11:51:42.867-04	2026-08-13 18:57:51.649-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 030 — compras registradas por un cliente desactualizado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-21 08:49:02.167203-04	\N
5a277d5a-253a-452c-aa25-b5a97e33905b	12	2026-08-14	2026-08-14 16:46:02.158-04	2026-08-14 17:06:11.226-04	cerrada_sin_cuadre	50471f55-7b80-41ea-86ee-4e91338d3864	\N	\N	t	Reconstruida por la migración 030 — compras registradas por un cliente desactualizado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-08-21 08:49:02.167203-04	\N
5d10e460-88c1-4760-a241-d86df18434c6	10	2026-08-21	2026-08-21 08:45:59.013533-04	2026-08-23 23:38:09.804049-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	c46387fd-d696-4a3d-8d2d-1d775e23386f	f	\N	3	0.0000	6625.0000	0.00	503500.00	503500.00	503500.00	0.00	9994.00	[{"kg": 6625.0000, "rd": 503500.00, "deuda": 0.00, "pagado": 503500.00, "compras": 3, "vendedor": "Misael Thomas"}]	2026-08-23 23:38:09.804049-04	\N	\N	2026-08-21 08:45:59.013533-04	0.00
c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	13	2026-08-25	2026-08-25 15:05:00.893636-04	2026-08-25 22:06:27.554749-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	65afb23d-89c1-4033-851b-150a3b6412d0	f	\N	4	0.0000	14445.0000	0.00	982260.00	982260.00	982260.00	0.00	252110.00	[{"kg": 14445.0000, "rd": 982260.00, "deuda": 0.00, "pagado": 982260.00, "compras": 4, "vendedor": "Misael Thomas"}]	2026-08-25 22:06:27.554749-04	\N	\N	2026-08-25 15:05:00.893636-04	0.00
6cdfe926-a923-48d5-b6b5-4a031869a25a	14	2026-08-26	2026-08-26 10:26:57.751466-04	2026-08-26 10:27:06.602778-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	406aa05c-50be-4306-a8fd-48e0a39bcbad	f	\N	0	0.0000	0.0000	0.00	0.00	0.00	0.00	0.00	0.00	[]	2026-08-26 10:27:06.602778-04	\N	\N	2026-08-26 10:26:57.751466-04	0.00
f619410f-34b9-49ad-bdd7-a70a14e1d0f2	15	2026-08-28	2026-08-28 15:24:12.801909-04	2026-08-28 23:17:40.075363-04	cerrada	50471f55-7b80-41ea-86ee-4e91338d3864	50471f55-7b80-41ea-86ee-4e91338d3864	11b4ebc8-e03a-4a07-82a8-740cca89be9c	f	\N	2	0.0000	82.0000	0.00	6888.00	6888.00	3444.00	3444.00	0.00	[{"kg": 82.0000, "rd": 6888.00, "deuda": 3444.00, "pagado": 3444.00, "compras": 2, "vendedor": "Misael Thomas"}]	2026-08-28 23:17:40.075363-04	\N	\N	2026-08-28 15:24:12.801909-04	0.00
\.


--
-- Data for Name: pago_prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pago_prestamo (id, prestamo_id, cuota_id, registrado_por, monto_total, aplicado_mora, aplicado_interes, aplicado_capital, tipo, metodo_pago, referencia, nota, fecha, created_at, sincronizado_en) FROM stdin;
\.


--
-- Data for Name: permiso_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permiso_usuario (usuario_id, permiso, otorgado_por, created_at) FROM stdin;
\.


--
-- Data for Name: precio_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.precio_diario (id, fecha, precio_quintal_seco, precio_anterior, hora_cambio, fijado_por, created_at, precio_quintal_baba, precio_anterior_baba, precio_baba_calculado, jornada_id, vigente_desde) FROM stdin;
a7365b4d-7877-44be-bc3c-e5cd8f8c7207	2026-07-30	120000.0000	\N	16:55:27	50471f55-7b80-41ea-86ee-4e91338d3864	2026-07-30 16:55:35.176146-04	11000.0000	\N	f	3b961f9d-0858-496d-90b2-4fd38572ecff	2026-07-30 16:55:27-04
cefd0426-3cb9-4b8d-8d68-998bbe42d002	2026-07-31	12000.0000	\N	19:50:07	50471f55-7b80-41ea-86ee-4e91338d3864	2026-07-31 19:50:14.947293-04	10000.0000	\N	f	1bd063c3-1b79-496f-bd4e-71679868f831	2026-07-31 19:50:07-04
5fa89621-16aa-434c-8b06-554477aeb53f	2026-08-02	13000.0000	\N	14:57:00	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-02 14:57:07.628089-04	11000.0000	\N	f	628ad2d2-0634-4996-9d42-fb8b383ecb3b	2026-08-02 14:57:00-04
5d5d4764-088c-4f65-b54b-546be44f3448	2026-08-08	11500.0000	\N	16:06:16	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-08 16:06:17.03008-04	9500.0000	\N	f	e3ed5169-28c3-4635-8309-cda8a20ffdde	2026-08-08 16:06:16-04
bab62731-b92c-4819-a57d-edd690331d1f	2026-08-10	12000.0000	\N	08:57:44	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-10 08:57:51.190875-04	10000.0000	\N	f	b9377f71-12fd-4143-9227-9c897c40affe	2026-08-10 08:57:44-04
27fde989-7f94-4e47-980f-9a36e4dc7eff	2026-08-11	10000.0000	\N	16:31:43	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-11 16:31:43.986507-04	9500.0000	\N	f	f600dca4-6139-4471-aaf1-c16035f4ce92	2026-08-11 16:31:43-04
2cfe0d93-a27f-4ac6-a3ac-acf7ee04f24c	2026-08-11	10000.0000	\N	16:33:15	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-11 16:33:15.65263-04	9500.0000	\N	f	f600dca4-6139-4471-aaf1-c16035f4ce92	2026-08-11 16:33:15-04
56b75c02-4bf8-4948-b4d7-96243dee9628	2026-08-11	10000.0000	\N	23:21:15	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-11 23:21:17.790744-04	9500.0000	\N	f	f600dca4-6139-4471-aaf1-c16035f4ce92	2026-08-11 23:21:15-04
d9b8c649-cc91-445e-8687-2b676c22e5f9	2026-08-12	10000.0000	\N	15:32:19	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-12 15:32:19.660825-04	9500.0000	\N	f	0e641f66-5e9d-4337-a987-92e4bdb20f61	2026-08-12 15:32:19-04
fb40942f-2af3-44e0-8103-16170560ab64	2026-08-14	10000.0000	\N	08:51:44	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-14 08:51:45.11082-04	9500.0000	\N	f	\N	2026-08-14 08:51:45.11082-04
d31b80dc-9880-4c11-a57b-8b5e2c849dfa	2026-08-14	10000.0000	\N	08:52:50	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-14 08:52:50.709958-04	9500.0000	\N	f	\N	2026-08-14 08:52:50.709958-04
39e1d1bc-32ee-4417-92a3-18ef1fc89112	2026-08-14	10000.0000	10000.0000	23:02:08.351094	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-14 23:02:08.351094-04	9500.0000	9500.0000	f	d9ca5818-4fdf-4ebd-9b5b-60aadb6a81b9	2026-08-14 23:02:08.351094-04
7a1f0aef-749b-4d91-932c-59f3de641322	2026-08-15	10000.0000	10000.0000	00:10:58.337943	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-15 00:10:58.337943-04	9500.0000	9500.0000	f	d9ca5818-4fdf-4ebd-9b5b-60aadb6a81b9	2026-08-15 00:10:58.337943-04
4e96448e-1b55-481e-8a4e-e60cbfbfb0ee	2026-08-15	10000.0000	10000.0000	00:21:44.949373	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-15 00:21:44.949373-04	9500.0000	9500.0000	f	bc05cb9d-268c-4d4f-a5d5-59815436d99a	2026-08-15 00:21:44.949373-04
8c06c1e5-26bf-4c9f-88b9-b6205755f10e	2026-08-15	10000.0000	10000.0000	00:21:46.357479	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-15 00:21:46.357479-04	9500.0000	9500.0000	f	bc05cb9d-268c-4d4f-a5d5-59815436d99a	2026-08-15 00:21:46.357479-04
3e2da71e-65c1-455b-84bd-edf4e6533afc	2026-08-15	10000.0000	10000.0000	00:36:57.896463	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-15 00:36:57.896463-04	9500.0000	9500.0000	f	bc05cb9d-268c-4d4f-a5d5-59815436d99a	2026-08-15 00:36:57.896463-04
2e8a2f1c-effc-402d-b315-b64367f0da6b	2026-08-15	10000.0000	10000.0000	13:16:03.335747	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-15 13:16:03.335747-04	9500.0000	9500.0000	f	bc05cb9d-268c-4d4f-a5d5-59815436d99a	2026-08-15 13:16:03.335747-04
4ef678e8-2720-4377-961b-26da64779cc2	2026-08-19	10000.0000	10000.0000	17:39:43.404672	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-19 17:39:43.404672-04	9500.0000	9500.0000	f	bc05cb9d-268c-4d4f-a5d5-59815436d99a	2026-08-19 17:39:43.404672-04
c46387fd-d696-4a3d-8d2d-1d775e23386f	2026-08-21	10000.0000	10000.0000	08:45:59.013533	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 08:45:59.013533-04	9500.0000	9500.0000	f	5d10e460-88c1-4760-a241-d86df18434c6	2026-08-21 08:45:59.013533-04
f0279557-83f8-42df-927b-8d70a9e31ce2	2026-08-13	10000.0000	\N	10:38:37	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-13 10:38:38.623337-04	9500.0000	\N	f	480d5dec-d688-4984-96f8-48ce453cc315	2026-08-13 10:38:38.623337-04
ca3ac3a2-e24f-4eb6-b077-34dbcb87e722	2026-08-14	10000.0000	\N	08:52:50	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-14 08:52:50.709959-04	9500.0000	\N	f	5a277d5a-253a-452c-aa25-b5a97e33905b	2026-08-14 08:52:50.709959-04
33571c75-1808-4b26-adcf-969b4c7ddaef	2026-08-21	10500.0000	10000.0000	08:54:31.416604	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 08:54:31.416604-04	9500.0000	9500.0000	f	5d10e460-88c1-4760-a241-d86df18434c6	2026-08-21 08:54:31.416604-04
f15ae041-5c59-4e36-a6e1-89759d391c08	2026-08-21	10500.0000	10500.0000	11:29:07.482753	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 11:29:07.482753-04	9500.0000	9500.0000	f	5d10e460-88c1-4760-a241-d86df18434c6	2026-08-21 11:29:07.482753-04
bb3c5d68-11d4-4d6c-870f-965761689f1b	2026-08-21	10500.0000	10500.0000	13:08:57.446502	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-21 13:08:57.446502-04	9500.0000	9500.0000	f	5d10e460-88c1-4760-a241-d86df18434c6	2026-08-21 13:08:57.446502-04
ca45e233-9c42-4f06-a855-19a5f3792c4d	2026-08-22	10500.0000	10500.0000	16:12:34.09065	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-22 16:12:34.09065-04	9500.0000	9500.0000	f	5d10e460-88c1-4760-a241-d86df18434c6	2026-08-22 16:12:34.09065-04
65afb23d-89c1-4033-851b-150a3b6412d0	2026-08-25	10500.0000	10500.0000	15:05:00.893636	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-25 15:05:00.893636-04	9500.0000	9500.0000	f	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	2026-08-25 15:05:00.893636-04
f863e577-efc5-4c63-a28d-ea7f9c425e48	2026-08-25	10500.0000	10500.0000	15:29:37.530344	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-25 15:29:37.530344-04	8500.0000	9500.0000	f	c541a829-b433-4c5d-9af4-1fdbeb7d8dbd	2026-08-25 15:29:37.530344-04
406aa05c-50be-4306-a8fd-48e0a39bcbad	2026-08-26	10500.0000	10500.0000	10:26:57.751466	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-26 10:26:57.751466-04	9500.0000	8500.0000	f	6cdfe926-a923-48d5-b6b5-4a031869a25a	2026-08-26 10:26:57.751466-04
11b4ebc8-e03a-4a07-82a8-740cca89be9c	2026-08-28	12000.0000	10500.0000	15:24:12.801909	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 15:24:12.801909-04	10000.0000	9500.0000	f	f619410f-34b9-49ad-bdd7-a70a14e1d0f2	2026-08-28 15:24:12.801909-04
af117ff2-8923-4a58-a8f9-c2b3d1205898	2026-08-28	11000.0000	12000.0000	15:24:23.167063	50471f55-7b80-41ea-86ee-4e91338d3864	2026-08-28 15:24:23.167063-04	10000.0000	10000.0000	f	f619410f-34b9-49ad-bdd7-a70a14e1d0f2	2026-08-28 15:24:23.167063-04
\.


--
-- Data for Name: prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestamo (id, proveedor_id, registrado_por, monto_principal, tasa_interes_pct, tipo_interes, modalidad_pago, tipo_plazo, plazo_meses, num_cuotas, fecha_desembolso, fecha_vencimiento, saldo_capital, interes_acumulado, mora_acumulada, total_pagado, estado, nota, created_at, anulado_en, anulado_por, motivo_anulacion) FROM stdin;
3c6957f8-385c-47ea-b609-163c6a1fc4a4	b249aa85-eb6c-4875-a8ab-2b56bff9c420	50471f55-7b80-41ea-86ee-4e91338d3864	30000.00	0.00	exento	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	30000.00	0.00	0.00	0.00	activo	\N	2026-08-13 17:57:54.905291-04	\N	\N	\N
8ad67967-6973-4d8c-a836-12c15f317156	965aed56-a93d-4e2f-8a24-bc1d90c6f27d	50471f55-7b80-41ea-86ee-4e91338d3864	20000.00	1.50	simple	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	20000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:04:18.864784-04	\N	\N	\N
aee5b04f-bf72-4d1f-8bcc-f185baf28049	b6426798-4857-4045-afa2-9c54d4664d26	50471f55-7b80-41ea-86ee-4e91338d3864	15000.00	1.50	simple	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	15000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:06:02.102096-04	\N	\N	\N
a377f48a-91d3-4ecd-b566-5f8af2f2ebe1	a52f733a-1268-4cb4-86e9-d2ae944d2008	50471f55-7b80-41ea-86ee-4e91338d3864	93600.00	1.50	simple	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	93600.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:08:59.332229-04	\N	\N	\N
a5cf635a-6d0e-43cb-a071-3cbf07a69e4e	41b28d96-087d-4481-ad9c-f212665a3009	50471f55-7b80-41ea-86ee-4e91338d3864	15000.00	1.50	simple	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	15000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:11:39.865306-04	\N	\N	\N
bc360da9-d36c-4eb2-b0bc-8b047bf5c37d	96abd074-8801-4d63-95d3-f32b6d739523	50471f55-7b80-41ea-86ee-4e91338d3864	87300.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	87300.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:21:23.23128-04	\N	\N	\N
a0f0ed56-2fad-4ac5-acf1-01e14d987dec	0abed074-d391-433f-9588-11ffe34a2644	50471f55-7b80-41ea-86ee-4e91338d3864	60000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	60000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:27:26.229741-04	\N	\N	\N
9d01542f-ff9b-4634-8d7a-703078a223d5	b6426798-4857-4045-afa2-9c54d4664d26	50471f55-7b80-41ea-86ee-4e91338d3864	5000.00	1.50	simple	vencimiento	cosecha_mayor	\N	\N	2026-08-13	2027-03-31	5000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:28:00.139396-04	\N	\N	\N
1ba58938-3549-469c-aa74-c0d9d024edf6	19245b2a-6294-48a2-a65a-3650a9bfa1a4	50471f55-7b80-41ea-86ee-4e91338d3864	122400.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	122400.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:36:07.047201-04	\N	\N	\N
03a2c264-9653-44b0-9e9b-90209e8ccf29	3eb2e7d6-59e3-485e-9a1b-98c5f6a5d434	50471f55-7b80-41ea-86ee-4e91338d3864	19100.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	19100.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:37:03.416005-04	\N	\N	\N
852ecd09-60d7-4dcd-afa3-d482c61d0ad4	597f4e2d-78b2-45f4-86c7-384b64031a16	50471f55-7b80-41ea-86ee-4e91338d3864	10000.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	10000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:37:46.990106-04	\N	\N	\N
ee5680f7-fedc-4aff-bae7-0721e928face	063b5ad5-340c-447e-8999-9e1f461e1982	50471f55-7b80-41ea-86ee-4e91338d3864	8800.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	8800.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:38:35.204708-04	\N	\N	\N
d1596b9b-0798-4218-a462-3105c5dd602e	15df5fed-5685-4e21-a633-a430a3ef671d	50471f55-7b80-41ea-86ee-4e91338d3864	18000.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	18000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:39:19.997708-04	\N	\N	\N
4c920795-97ee-478e-b237-a2be4343248f	e7753806-8abf-4f62-a440-f8b8f9d92e49	50471f55-7b80-41ea-86ee-4e91338d3864	6500.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	6500.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:40:47.431712-04	\N	\N	\N
3192029f-b9f1-4225-87e6-9cc118b294a9	d1cacdbd-c5c1-4646-ac26-2bd42f168f4c	50471f55-7b80-41ea-86ee-4e91338d3864	79500.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	79500.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:41:35.076108-04	\N	\N	\N
c183193e-6ed8-4652-bc7b-96e103b68a25	360543ee-0192-48b7-aa87-5eb897047a3b	50471f55-7b80-41ea-86ee-4e91338d3864	100000.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-13	\N	100000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:55:11.119011-04	\N	\N	\N
7295189e-4da2-4412-acf3-26abfc2810bf	4bd35246-1332-49db-89d2-db13ae054ca7	50471f55-7b80-41ea-86ee-4e91338d3864	118000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-14	\N	118000.00	0.00	0.00	0.00	activo	\N	2026-08-14 22:43:57.717655-04	\N	\N	\N
00f0f10a-4dd9-4d66-aa98-2ec5d6cfc9f6	aae92984-5596-4cf5-bab3-a2edf97f4677	50471f55-7b80-41ea-86ee-4e91338d3864	185000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	185000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:53:18.573889-04	\N	\N	\N
0e21a6e7-9c5c-48a6-95ca-f7d779824b0f	4bd35246-1332-49db-89d2-db13ae054ca7	50471f55-7b80-41ea-86ee-4e91338d3864	38000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	0.00	0.00	0.00	0.00	cancelado	\N	2026-08-13 18:53:49.25707-04	2026-08-15 00:00:05.408966-04	50471f55-7b80-41ea-86ee-4e91338d3864	Credito aplicado por error
611fd4d1-e1bc-490c-afdb-90c1ce13749e	8e1e86bc-aef7-4a09-a707-6c7035e8434a	50471f55-7b80-41ea-86ee-4e91338d3864	1000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	0.00	0.00	0.00	0.00	cancelado	\N	2026-08-13 18:25:46.043662-04	2026-08-15 00:06:49.868903-04	50471f55-7b80-41ea-86ee-4e91338d3864	POR ERROR DE MONTO
adf3e377-fee1-4ccd-83fb-24b72a54d107	8e1e86bc-aef7-4a09-a707-6c7035e8434a	50471f55-7b80-41ea-86ee-4e91338d3864	30000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-13	\N	30000.00	0.00	0.00	0.00	activo	\N	2026-08-13 18:24:42.10616-04	\N	\N	\N
94b0b72e-3a0a-40b1-b58c-198f113b34b9	80712bfb-0d34-4ee5-89c3-acc4dca89f26	50471f55-7b80-41ea-86ee-4e91338d3864	65000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-19	\N	65000.00	0.00	0.00	0.00	activo	\N	2026-08-19 22:34:19.58813-04	\N	\N	\N
b8ccf159-b277-4585-8801-9b989a73ca43	dc48f032-736f-4f2e-bb36-dcc3b920fe98	50471f55-7b80-41ea-86ee-4e91338d3864	10000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-19	\N	10000.00	0.00	0.00	0.00	activo	\N	2026-08-19 22:36:25.76828-04	\N	\N	\N
61713ca7-352d-418f-9fd1-3cc59b203847	b860493f-3165-4776-a9e3-84e2cb21f4b7	50471f55-7b80-41ea-86ee-4e91338d3864	200000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-19	\N	200000.00	0.00	0.00	0.00	activo	\N	2026-08-19 22:37:45.134943-04	\N	\N	\N
47c04727-45c8-4331-863b-c9f7a47ab934	597f4e2d-78b2-45f4-86c7-384b64031a16	50471f55-7b80-41ea-86ee-4e91338d3864	15000.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-19	\N	15000.00	0.00	0.00	0.00	activo	\N	2026-08-19 22:48:07.379242-04	\N	\N	\N
3ee9b33f-1466-4518-bc1a-50b1ae83cc12	0d298b64-05fd-4eda-a01f-a7f687c3c27e	50471f55-7b80-41ea-86ee-4e91338d3864	185500.00	1.50	simple	abonos_libres	meses	\N	\N	2026-08-20	\N	185500.00	0.00	0.00	0.00	activo	\N	2026-08-20 22:47:06.70988-04	\N	\N	\N
fe8a68af-822b-42d5-9cf1-8656c2327efc	81a0bbca-2d3b-48fd-802d-091330d10c06	50471f55-7b80-41ea-86ee-4e91338d3864	10000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-21	\N	10000.00	0.00	0.00	0.00	activo	\N	2026-08-21 23:27:43.829023-04	\N	\N	\N
0c370228-76b1-40e9-9367-5adc0b6e0222	e0b142e1-b3c4-41e4-b897-f3cde03639a2	50471f55-7b80-41ea-86ee-4e91338d3864	284000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-21	\N	284000.00	0.00	0.00	0.00	activo	\N	2026-08-21 23:28:39.989483-04	\N	\N	\N
941b7efc-8fd3-4b20-ae62-449ca6822e1b	c8e8d49d-4af9-4f56-a8d1-3891713eb8d2	50471f55-7b80-41ea-86ee-4e91338d3864	75000.00	2.00	simple	abonos_libres	meses	\N	\N	2026-08-25	\N	75000.00	0.00	0.00	0.00	activo	\N	2026-08-25 16:44:10.44067-04	\N	\N	\N
7438e37c-a4bf-4261-8d45-34d3b27338fc	2287a99e-37a4-4d21-8b3c-d64c6317be74	50471f55-7b80-41ea-86ee-4e91338d3864	50000.00	2.00	simple	abonos_libres	meses	\N	\N	2026-08-26	\N	0.00	0.00	0.00	0.00	cancelado	\N	2026-08-26 10:49:19.875047-04	2026-08-26 10:51:16.596585-04	50471f55-7b80-41ea-86ee-4e91338d3864	error en el monto
3c4a7513-c0e7-4a33-bfe5-46508d583b62	65756e8d-76c6-4286-8f34-d97f1af82311	50471f55-7b80-41ea-86ee-4e91338d3864	20000.00	2.00	simple	abonos_libres	meses	\N	\N	2026-08-26	\N	20000.00	0.00	0.00	0.00	activo	\N	2026-08-26 11:31:48.186306-04	\N	\N	\N
87877d68-0b12-4a18-b364-ce2fc10f83b2	70c66840-e5fd-4da0-95d3-be2ed1935e98	50471f55-7b80-41ea-86ee-4e91338d3864	5000.00	0.00	exento	abonos_libres	meses	\N	\N	2026-08-28	\N	5000.00	0.00	0.00	0.00	activo	\N	2026-08-28 23:19:28.024357-04	\N	\N	\N
\.


--
-- Data for Name: proceso_secado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proceso_secado (id, fecha_inicio, fecha_fin, kg_baba_entrada, kg_seco_salida, estado, registrado_por, nota, created_at) FROM stdin;
6f53ea31-afd0-42b4-9181-240a75a6230b	2026-08-21	2026-08-21	500.0000	250.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	Prueba	2026-08-21 08:31:18.688664-04
f13b9191-3af0-44eb-bfed-6b7a1cf109ba	2026-08-21	2026-08-21	125.0000	125.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	Lona 1	2026-08-21 08:50:50.559857-04
db5c5bc2-04f6-4b84-80b0-075fb0aefbe5	2026-08-21	2026-08-21	500.0000	562.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 08:51:55.732237-04
80b6d361-4029-4bf5-a3aa-c0c5d26da465	2026-08-21	2026-08-21	1200.0000	1375.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	Lona 2	2026-08-21 11:26:33.026754-04
7dc933fe-fb22-4b62-9756-0e6727b49ded	2026-08-21	2026-08-21	2500.0000	2750.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	Lona 3	2026-08-21 13:09:17.881942-04
8935e1ef-f2de-4acb-beb4-aae21937931f	2026-08-21	2026-08-26	1250.0000	1500.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	LONA 6	2026-08-21 23:19:10.793699-04
424e6307-689c-4488-91a7-565e621a2c8b	2026-08-21	2026-08-26	125.0000	147.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	LONA 7	2026-08-21 23:20:17.689085-04
476b9ae2-9fdb-4ffc-a803-733f38d5db2a	2026-08-21	2026-08-26	1950.0000	2015.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	LONA 8	2026-08-21 23:38:22.675996-04
efafac0f-494e-4995-8b21-f024696b0bee	2026-08-21	2026-08-27	3746.2500	4000.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	LONA 9	2026-08-21 23:39:00.107153-04
510d4fe2-5a4a-461b-a586-ae24246f0878	2026-08-26	2026-08-27	5000.0000	5200.0000	completado	50471f55-7b80-41ea-86ee-4e91338d3864	lona 10	2026-08-26 10:45:05.47712-04
f009762a-56f2-4f97-95a0-901a7678aefd	2026-08-27	\N	6250.0000	\N	en_proceso	50471f55-7b80-41ea-86ee-4e91338d3864	lona 1	2026-08-27 12:44:39.933453-04
6eaec77c-aace-42e7-a52e-03d8317c0e2a	2026-08-27	\N	2500.0000	\N	en_proceso	50471f55-7b80-41ea-86ee-4e91338d3864	lona 2	2026-08-27 12:45:00.822771-04
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (id, nombre, cedula, telefono, tipo, saldo_pendiente, activo, created_at, vende_cacao) FROM stdin;
e61ac931-031a-4058-a4c7-47dbf1a196da	Emil Saro	\N	\N	ocasional	0.00	t	2026-08-08 16:06:49.737258-04	t
38fdee91-a5b4-438e-b8ec-c91e32fd0396	Dikson	402-1215894-0	8293468225	registrado	0.00	f	2026-08-07 16:17:23.887065-04	t
df335329-ed11-408b-a68c-fa0524258721	FRANCISCO LANTIGUA TEJADA, MORENO	055-0006003-2	\N	registrado	0.00	t	2026-08-11 21:02:03.083942-04	t
15df5fed-5685-4e21-a633-a430a3ef671d	JOEL ALMONTE FELIX	061-0030839-1	\N	registrado	0.00	t	2026-08-11 21:03:07.640019-04	t
1dc291b0-bb42-4093-8989-9bcbcd691b11	RAMON EMILIO UREÑA, MIMILIO	061-0010031-9	\N	registrado	0.00	t	2026-08-11 21:05:17.722753-04	t
543e6f87-fed2-4296-8b49-400faea5d3f9	RAMONA CRUZ SALAZAR, NANEY	061-0009842-2	\N	registrado	0.00	t	2026-08-11 21:07:13.53816-04	t
e7753806-8abf-4f62-a440-f8b8f9d92e49	MIGUEL A. CORNIEL BONILLA, CHINDOLO	064-0030771-3	\N	registrado	0.00	t	2026-08-11 21:08:26.606429-04	t
c262506f-26a3-495d-9c59-556f5f4bab58	HECTOR BIENVENIDO ORTEGA	\N	8293596934	ocasional	0.00	f	2026-08-11 22:56:04.031082-04	t
96abd074-8801-4d63-95d3-f32b6d739523	VICTOR RAFAEL ORTEGA	061-0030589-2	\N	registrado	0.00	t	2026-08-11 21:11:12.565667-04	t
81a0bbca-2d3b-48fd-802d-091330d10c06	CASMIRO HERRERA SALAZAR, MIMIN	061-0017058-5	\N	registrado	0.00	t	2026-08-21 23:26:44.94233-04	t
2a554d7a-10f1-498a-9672-432fb13db92c	Juan Yamin Parra, El Chino	064-0002355-9	\N	registrado	0.00	t	2026-08-25 15:28:50.202867-04	t
3eb2e7d6-59e3-485e-9a1b-98c5f6a5d434	DARIO LEONARDO MEJIA	064-0002261-9	\N	registrado	0.00	t	2026-08-11 21:12:32.885519-04	t
70c66840-e5fd-4da0-95d3-be2ed1935e98	Bartolo Brito Vasquez, Chicuelo	061-0009811-7	\N	registrado	0.00	t	2026-08-28 23:19:02.694413-04	t
b249aa85-eb6c-4875-a8ab-2b56bff9c420	WALKIRIS SANCHEZ MOREL	402-1443794-5	8096063903	registrado	0.00	t	2026-08-11 21:15:01.785982-04	t
6d34735f-ef0e-4841-9463-46b612251235	ALEXIS VASQUEZ HERRERA	402-1219014-0	8098287985	registrado	0.00	t	2026-08-11 21:16:16.545245-04	t
d1cacdbd-c5c1-4646-ac26-2bd42f168f4c	JOSE L. MEJIA CORONA, CHOLITO	061-0028680-3	8097830818	registrado	0.00	t	2026-08-11 21:17:48.247982-04	t
bfe70d76-f2e3-41d8-8efe-fa0511fe88e0	ARCADIO SALAZAR BURGOS	064-0003890-4	8295480092	registrado	0.00	t	2026-08-11 21:19:01.134387-04	t
f0332d65-d20b-4408-9ea5-4783cbf9eae3	YANIRE ORTEGA PARRA	061-0026582-3	8293514084	registrado	0.00	t	2026-08-11 21:20:49.247316-04	t
ea171812-4f45-4023-84ac-bf1fa3502dba	NARCISO ROSARIO ORTEGA	061-0022501-7	\N	registrado	0.00	t	2026-08-11 21:37:42.038743-04	t
5d194c80-26dd-4580-adc7-7696a170d8b6	DANAURYS FERREIRA ORTEGA	402-1227984-4	8294180069	registrado	0.00	t	2026-08-11 21:39:31.697755-04	t
da73ff20-f7d3-4107-8b33-48fdd236338c	WILSON ORTEGA OVALLES	061-0022494-5	8295990582	registrado	0.00	t	2026-08-11 21:54:16.77478-04	t
14777d4a-874c-46a8-bfc8-4b5be85ba4c2	ROSANNA ORTEGA DE VILLA, LORO	061-0025627-7	\N	registrado	0.00	t	2026-08-11 21:58:27.512051-04	t
f64ec2b6-e7a3-45f3-acad-70030d56642f	RAFAEL A. SEGURA NOLASCO	001-1493303-9	8495228288	registrado	0.00	t	2026-08-11 21:59:44.755029-04	t
41b28d96-087d-4481-ad9c-f212665a3009	ANDRES ALMONTE SANTOS	064-0002802-0	\N	registrado	0.00	t	2026-08-11 22:00:40.391059-04	t
a3c1c7ef-4c1e-4022-bf5d-275f5f93a0e7	ALFREUDY PAULINO CORNIEL	402-0867012-1	8293233007	registrado	0.00	t	2026-08-11 22:02:19.877269-04	t
8e822748-dd8a-485a-aa60-d4c54ec8979b	RAMON ESTEBAN GONSALEZ	402-2367940-4	8296675385	registrado	0.00	t	2026-08-11 22:04:08.647904-04	t
2287a99e-37a4-4d21-8b3c-d64c6317be74	BENITA GABIN DE LEON	001-1258380-2	8293144596	registrado	0.00	t	2026-08-11 22:06:00.788329-04	t
965aed56-a93d-4e2f-8a24-bc1d90c6f27d	ANDRES ORTEGA PARRA	001-1236435-1	8293497068	registrado	0.00	t	2026-08-11 22:07:13.628683-04	t
e0b142e1-b3c4-41e4-b897-f3cde03639a2	LUIS REYES TEJADA MEJIA	061-0004375-8	8295101349	registrado	0.00	t	2026-08-11 22:08:35.542479-04	t
5a3f952d-24c2-4ea4-a1a6-111e2db0ddb4	LUIS ANGEL TEJADA TAVAREZ	402-1285626-0	8492121349	registrado	0.00	t	2026-08-11 22:09:55.715096-04	t
5697c513-1858-4502-9102-1c8c0dd5c9c0	RAFAEL MEJIA MEJIA	061-0012506-8	8096610368	registrado	0.00	t	2026-08-11 22:12:09.421884-04	t
c8e8d49d-4af9-4f56-a8d1-3891713eb8d2	MARIANO ORTEGA MEJIA	061-0009939-6	8094952131	registrado	0.00	t	2026-08-11 22:13:34.43135-04	t
2cbca625-5f5f-4afe-b176-fe98006a60fb	LUCIANO MEJIA MENA	061-0022756-7	\N	registrado	0.00	t	2026-08-11 22:14:10.597851-04	t
b1643c03-cfad-4f57-b260-e2f6b3b76747	NARCISO MEJIA GABIN, PAPOY	061-0004211-5	\N	registrado	0.00	t	2026-08-11 22:15:12.965027-04	t
1e38e96d-594a-407d-9a47-e586b888fe8b	FREDDY MEJIA MARTINEZ	061-0028945-0	8292053928	registrado	0.00	t	2026-08-11 22:19:42.689991-04	t
ca021858-f559-4d89-b76f-b6abdee78261	CRITINO PARRA GARCIA, EL PAPY	061-0009962-8	8292108848	registrado	0.00	t	2026-08-11 22:35:28.89018-04	t
f107afc5-7fd5-407b-ae42-7187735fe60d	MANUEL A. ORTEGA MARTINEZ, PAPO	061-0025129-4	\N	registrado	0.00	t	2026-08-11 22:38:17.074294-04	t
7bad7bd4-b2a5-4568-9031-dd83bf44f279	JOSE CORONA ALMANZAR	061-0031663-4	8094650270	registrado	0.00	t	2026-08-11 22:39:43.569308-04	t
bb93546e-e816-43db-85a2-f3b9769dcaa7	JUAN MENA TEJADA	061-0004364-2	8094648171	registrado	0.00	t	2026-08-11 22:43:23.683066-04	t
953ef771-3db5-4698-9d96-fa0e0983249a	DALIA MERCEDES ALMONTE SIERRA	061-0004400-4	\N	registrado	0.00	t	2026-08-11 22:44:31.928463-04	t
19245b2a-6294-48a2-a65a-3650a9bfa1a4	RAIMUNDO MARTINEZ GABIN	064-0003774-0	8293340147	registrado	0.00	t	2026-08-11 22:45:59.199358-04	t
8e07b79c-2c26-42e9-abee-14566e5c8f0e	FELICIANO PEÑA MOSQUEA	061-0004555-5	\N	registrado	0.00	t	2026-08-11 22:46:50.23298-04	t
b88efc2a-51fc-46c7-b4fe-2cc36954b830	JOEL MOISES VASQUEZ VZRGAS	402-4445626-1	\N	registrado	0.00	t	2026-08-11 22:49:20.409369-04	t
8413c704-b2e6-455f-8c8d-1c6d0ae6a6ab	AMADO ROSARIO ORTEGA	061-0027229-0	\N	registrado	0.00	t	2026-08-11 22:50:23.777634-04	t
597f4e2d-78b2-45f4-86c7-384b64031a16	RORFY MENDEZ ESTRELLA	061-0030591-8	\N	registrado	0.00	t	2026-08-11 22:51:18.320153-04	t
d983ae36-0d48-4bbc-b150-2a7e10c8823f	YSIDRO SALAZAR RODRIGUEZ	061-0010007-9	\N	registrado	0.00	t	2026-08-11 22:52:05.063806-04	t
52dbf2c4-5994-4990-8f42-c2609d50f3ee	SANTO REYES LUNA	064-0016825-5	8292650329	registrado	0.00	t	2026-08-11 22:57:23.629871-04	t
f6442486-cf30-498b-8d6c-a5bcec74a2df	ARIEL DIAZ FLETE	061-0030167-7	8295530682	registrado	0.00	t	2026-08-11 23:00:27.725174-04	t
8fd2184f-3b71-4ed0-94df-931be28e0fd7	CARLOS M. VAZQUEZ, YOALI	061-0010049-1	8293218147	registrado	0.00	t	2026-08-11 23:03:05.287886-04	t
8e1e86bc-aef7-4a09-a707-6c7035e8434a	ROMELY DIAZ VASQUEZ, GORO	037-0115496-9	\N	registrado	0.00	t	2026-08-11 23:04:28.731747-04	t
afc43ef7-215e-497c-a725-76930e9aa8a3	ANEURYS ALMONTE LANTIGUA	061-0026792-8	\N	registrado	0.00	t	2026-08-11 23:07:11.431393-04	t
a52f733a-1268-4cb4-86e9-d2ae944d2008	Miguel Angel Ortega	061-0009940-4	8092989832	registrado	0.00	t	2026-08-11 18:05:51.831954-04	t
deee5e9b-9d05-4388-a27c-860fcd0712d9	ELADIO ORTEGA HIDALGO	061-0009934-7	8296638583	registrado	0.00	t	2026-08-11 20:56:53.616675-04	t
360543ee-0192-48b7-aa87-5eb897047a3b	Enrriquez Mejia	016-0012489-7	\N	registrado	0.00	t	2026-08-13 18:18:12.889539-04	f
1cec08a2-130e-46ed-b658-2e142d92b0b0	JUBENAL ORTEGA OVALLES	061-0009943-8	\N	registrado	0.00	t	2026-08-11 20:55:24.917829-04	t
07ca5c4d-e992-49c3-8cca-1200994a5699	RAMON A. POLANCO MERCEDES, LU	061-0018649-9	\N	registrado	0.00	t	2026-08-13 21:14:21.955928-04	t
4bd35246-1332-49db-89d2-db13ae054ca7	Osiris Jaime Gil, Nevado	064-0011936-5	8093761807	registrado	0.00	t	2026-08-13 18:52:24.680268-04	t
dc48f032-736f-4f2e-bb36-dcc3b920fe98	PEDRO SALAZAR ACOSTA	061-0018478-4	\N	registrado	0.00	t	2026-08-19 22:12:24.59084-04	t
80712bfb-0d34-4ee5-89c3-acc4dca89f26	RAFAEL PEREZ	061-0004303-0	\N	registrado	0.00	t	2026-08-19 22:15:46.684972-04	t
0d298b64-05fd-4eda-a01f-a7f687c3c27e	DOMINGO LEONARDO MEJIA. PUPI	061-0004167-9	\N	registrado	0.00	t	2026-08-20 22:44:31.975311-04	t
489128b6-9006-4ac6-a6ea-1c7ed6f7ee47	DIOGENE ORTEGA PEREZ, BOKI	061-0009946-1	\N	registrado	0.00	t	2026-08-11 21:09:44.581835-04	t
49a0305a-054a-4698-a216-f35bf9e46a7a	MERELIN J. ORTEGA	402-3377023-5	8292701688	registrado	0.00	t	2026-08-11 21:56:07.576464-04	t
063b5ad5-340c-447e-8999-9e1f461e1982	El Rubio Lu	061-0024018-0	8093134095	registrado	0.00	t	2026-08-11 18:03:14.083531-04	t
e3337d24-38d4-4046-a7b0-f647d292004d	Maria Alt	001-0000000-1	\N	registrado	0.00	f	2026-08-02 14:58:36.678698-04	f
c0f7172c-d773-425f-8fed-5f00fe4837fd	El Bory Blanco	\N	8492128264	ocasional	0.00	t	2026-08-11 18:01:47.531074-04	t
9e2db422-1822-41b7-8fbf-c88013fe2093	Wilson Cao	402-3548825-7	8299578901	registrado	0.00	t	2026-08-11 18:04:29.78421-04	t
b6426798-4857-4045-afa2-9c54d4664d26	PAULINO GAVIN, CHICHE	061-0004136-4	\N	registrado	0.00	t	2026-08-11 20:59:21.854236-04	t
1bfe6622-4b97-4f5f-9eaf-66eb4febe423	HILARIO TEJADA BALBUENA, CHACHAO	061-0019229-0	\N	registrado	0.00	t	2026-08-11 21:01:03.562342-04	t
c5a2a889-112d-4a36-89f0-88ea0bbc3c96	JUAN MANUEL POLANCO ORTEGA, EL CUERO	402-2094674-9	8296804280	registrado	0.00	t	2026-08-11 22:53:40.176616-04	t
0abed074-d391-433f-9588-11ffe34a2644	MANUEL DE JESUS ORTEGA, NELSON	061-0009959-4	8094941691	registrado	0.00	t	2026-08-11 22:58:40.551556-04	t
aae92984-5596-4cf5-bab3-a2edf97f4677	Pedro Polanco, lu	061-0004314-7	\N	registrado	0.00	t	2026-08-13 18:50:50.247061-04	t
37615243-c59a-4e90-9bb5-9ce478c793bb	ALFONSINA CARELA HERRERA	402-2771646-7	\N	registrado	0.00	t	2026-08-13 21:08:07.390982-04	t
4a8f18bf-48f1-462c-a875-d84765b19f9c	SANTO DUARTE MARTINEZ, PAPITO CHIVO	061-0028357-8	\N	registrado	0.00	t	2026-08-13 21:09:09.325246-04	t
c6e705c5-5b6d-4c6b-8c01-aad5fb5669e7	Juanito Perez	001-0000000-0	8090000000	registrado	0.00	f	2026-08-02 14:58:16.635204-04	t
b860493f-3165-4776-a9e3-84e2cb21f4b7	YNOCENCIO DUARTE, SENCIO	061-0003442-7	8294778164	registrado	0.00	t	2026-08-13 21:07:07.92747-04	t
048e7c4c-1fa7-4c61-9e16-aa18ef477380	JOSE LUIS POLANCO	064-0028530-7	\N	registrado	0.00	t	2026-08-21 23:25:56.337675-04	t
0ff85d43-dc89-4b3d-b033-dbb18a07e728	Eladio Polanco, Piragua	061-0019285-2	\N	registrado	0.00	t	2026-08-22 16:13:18.784063-04	t
65756e8d-76c6-4286-8f34-d97f1af82311	Esteban Gabin Parra	064-0002875-6	\N	registrado	0.00	t	2026-08-26 11:31:23.969469-04	t
\.


--
-- Data for Name: scoring_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scoring_proveedor (id, proveedor_id, categoria, pagos_puntuales, pagos_tardios, moras_activas, moras_condonadas, updated_at) FROM stdin;
\.


--
-- Data for Name: secado_compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secado_compras (secado_id, compra_id, kg_aportado) FROM stdin;
\.


--
-- Data for Name: unidad_conversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unidad_conversion (unidad, equivalencia_kg, descripcion) FROM stdin;
kg	1.0	Kilogramo
quintal_seco	50.0	Quintal seco (50 kg)
quintal_baba	125.0	Quintal en baba (125 kg)
saco	50.0	Saco
caja	35.0	Caja
cubeta	20.0	Cubeta
libra	0.453592	Libra
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, nombre, email, rol, auth_user_id, activo, created_at) FROM stdin;
74aa956e-5a01-4633-aebf-165e9e933974	Adriel	adriel@gmail.com	vendedor	eaf76eb2-446d-4f5b-97d1-fefea5fd2ef7	t	2026-07-08 19:30:19.744217-04
2b5262e6-1cbc-47f6-a851-41bad680d7d7	Misael Thomas	misael14@gmail.com	vendedor	94610e54-aa86-4ed9-9ba5-c82d0fc079cb	t	2026-08-11 23:25:45.928214-04
50471f55-7b80-41ea-86ee-4e91338d3864	Admin	admin@cacao.com	admin	50471f55-7b80-41ea-86ee-4e91338d3864	t	2026-07-04 16:12:43.895347-04
\.


--
-- Data for Name: vendedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendedor (id, nombre, cedula, telefono, dispositivo_id, impresora_bt, activo, created_at, usuario_id) FROM stdin;
50471f55-7b80-41ea-86ee-4e91338d3864	Admin	\N	\N	\N	\N	t	2026-07-04 16:12:43.895347-04	50471f55-7b80-41ea-86ee-4e91338d3864
2530a2db-1e70-4dfc-8d61-c5310112b4ff	Adriel	\N	\N	\N	\N	t	2026-07-08 19:30:19.829121-04	74aa956e-5a01-4633-aebf-165e9e933974
89db70a1-e8ec-408f-a87a-906a65a9a990	Misael Thomas	\N	\N	\N	\N	t	2026-08-11 23:27:56.401098-04	2b5262e6-1cbc-47f6-a851-41bad680d7d7
\.


--
-- Data for Name: venta_importadora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venta_importadora (id, empresa, volumen_kg, precio_venta, numero_comprobante, registrado_por, nota, fecha, created_at, tipo_cacao, importadora_id, estado_cobro, monto_cobrado, saldo_cobrar) FROM stdin;
41e20398-7518-471e-b9a8-2d4b66c15ae9	COPROCASI	66.6600	10000.0000	\N	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-21 11:25:36.484519-04	2026-08-21 11:25:36.484519-04	baba	6e713251-0250-42a7-bd38-9775d2559ce0	parcial	600000.00	66600.00
415c8579-35ce-44ee-aabe-c1831183958f	COPROCASI	7500.0000	260.0000	\N	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-27 12:42:37.963245-04	2026-08-27 12:42:37.963245-04	seco	6e713251-0250-42a7-bd38-9775d2559ce0	pendiente	0.00	1950000.00
74b00f0a-b5c4-4f67-bd9e-8ab61e5e0c20	COPROCASI	7500.0000	280.0000	\N	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-27 12:43:40.528102-04	2026-08-27 12:43:40.528102-04	seco	6e713251-0250-42a7-bd38-9775d2559ce0	pendiente	0.00	2100000.00
cbc5c62b-04e4-48bb-9a74-09698649addd	COPROCASI	1000.0000	270.0000	\N	50471f55-7b80-41ea-86ee-4e91338d3864	\N	2026-08-27 12:45:33.940707-04	2026-08-27 12:45:33.940707-04	seco	6e713251-0250-42a7-bd38-9775d2559ce0	pendiente	0.00	270000.00
\.


--
-- Data for Name: messages_2026_08_26; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_26 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_08_27; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_27 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_08_28; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_28 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_08_29; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_29 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_08_30; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_30 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_08_31; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_08_31 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: messages_2026_09_01; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.messages_2026_09_01 (topic, extension, payload, event, private, updated_at, inserted_at, id, binary_payload) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: realtime; Owner: supabase_admin
--

COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
20211116024918	2026-07-03 21:11:33
20211116045059	2026-07-03 21:11:33
20211116050929	2026-07-03 21:11:33
20211116051442	2026-07-03 21:11:33
20211116212300	2026-07-03 21:11:33
20211116213355	2026-07-03 21:11:34
20211116213934	2026-07-03 21:11:34
20211116214523	2026-07-03 21:11:34
20211122062447	2026-07-03 21:11:34
20211124070109	2026-07-03 21:11:34
20211202204204	2026-07-03 21:11:34
20211202204605	2026-07-03 21:11:34
20211210212804	2026-07-03 21:11:35
20211228014915	2026-07-03 21:11:35
20220107221237	2026-07-03 21:11:35
20220228202821	2026-07-03 21:11:35
20220312004840	2026-07-03 21:11:35
20220603231003	2026-07-03 21:11:36
20220603232444	2026-07-03 21:11:36
20220615214548	2026-07-03 21:11:36
20220712093339	2026-07-03 21:11:36
20220908172859	2026-07-03 21:11:36
20220916233421	2026-07-03 21:11:36
20230119133233	2026-07-03 21:11:36
20230128025114	2026-07-03 21:11:36
20230128025212	2026-07-03 21:11:37
20230227211149	2026-07-03 21:11:37
20230228184745	2026-07-03 21:11:37
20230308225145	2026-07-03 21:11:37
20230328144023	2026-07-03 21:11:37
20231018144023	2026-07-03 21:11:37
20231204144023	2026-07-03 21:11:38
20231204144024	2026-07-03 21:11:38
20231204144025	2026-07-03 21:11:38
20240108234812	2026-07-03 21:11:38
20240109165339	2026-07-03 21:11:38
20240227174441	2026-07-03 21:11:38
20240311171622	2026-07-03 21:11:39
20240321100241	2026-07-03 21:11:39
20240401105812	2026-07-03 21:11:39
20240418121054	2026-07-03 21:11:39
20240523004032	2026-07-03 21:11:40
20240618124746	2026-07-03 21:11:40
20240801235015	2026-07-03 21:11:40
20240805133720	2026-07-03 21:11:40
20240827160934	2026-07-03 21:11:40
20240919163303	2026-07-03 21:11:40
20240919163305	2026-07-03 21:11:41
20241019105805	2026-07-03 21:11:41
20241030150047	2026-07-03 21:11:41
20241108114728	2026-07-03 21:11:41
20241121104152	2026-07-03 21:11:41
20241130184212	2026-07-03 21:11:42
20241220035512	2026-07-03 21:11:42
20241220123912	2026-07-03 21:11:42
20241224161212	2026-07-03 21:11:42
20250107150512	2026-07-03 21:11:42
20250110162412	2026-07-03 21:11:42
20250123174212	2026-07-03 21:11:42
20250128220012	2026-07-03 21:11:42
20250506224012	2026-07-03 21:11:43
20250523164012	2026-07-03 21:11:43
20250714121412	2026-07-03 21:11:43
20250905041441	2026-07-03 21:11:43
20251103001201	2026-07-03 21:11:43
20251120212548	2026-07-03 21:11:43
20251120215549	2026-07-03 21:11:43
20260218120000	2026-07-03 21:11:44
20260326120000	2026-07-03 21:11:44
20260514120000	2026-07-03 21:11:44
20260527120000	2026-07-03 21:11:44
20260528120000	2026-07-03 21:11:44
20260603120000	2026-07-03 21:11:44
20260605120000	2026-07-03 21:11:45
20260606110000	2026-07-03 21:11:45
20260616120000	2026-07-03 21:11:45
20260624120000	2026-07-03 21:11:46
20260626120000	2026-07-03 21:11:46
20260706120000	2026-07-06 23:10:40
20260707120000	2026-07-17 12:18:46
20260709120000	2026-07-17 12:18:47
\.


--
-- Data for Name: subscription; Type: TABLE DATA; Schema: realtime; Owner: supabase_realtime_admin
--

COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at, action_filter, selected_columns) FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id, type, versioning_status) FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.buckets_analytics (name, type, format, created_at, updated_at, id, deleted_at) FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.buckets_vectors (id, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
0	create-migrations-table	e18db593bcde2aca2a408c4d1100f6abba2195df	2026-07-03 21:12:01.119778
1	initialmigration	6ab16121fbaa08bbd11b712d05f358f9b555d777	2026-07-03 21:12:01.129936
2	storage-schema	f6a1fa2c93cbcd16d4e487b362e45fca157a8dbd	2026-07-03 21:12:01.137903
3	pathtoken-column	2cb1b0004b817b29d5b0a971af16bafeede4b70d	2026-07-03 21:12:01.167319
4	add-migrations-rls	427c5b63fe1c5937495d9c635c263ee7a5905058	2026-07-03 21:12:01.177815
5	add-size-functions	79e081a1455b63666c1294a440f8ad4b1e6a7f84	2026-07-03 21:12:01.184098
6	change-column-name-in-get-size	ded78e2f1b5d7e616117897e6443a925965b30d2	2026-07-03 21:12:01.190764
7	add-rls-to-buckets	e7e7f86adbc51049f341dfe8d30256c1abca17aa	2026-07-03 21:12:01.197452
8	add-public-to-buckets	fd670db39ed65f9d08b01db09d6202503ca2bab3	2026-07-03 21:12:01.203668
9	fix-search-function	af597a1b590c70519b464a4ab3be54490712796b	2026-07-03 21:12:01.210119
10	search-files-search-function	b595f05e92f7e91211af1bbfe9c6a13bb3391e16	2026-07-03 21:12:01.216395
11	add-trigger-to-auto-update-updated_at-column	7425bdb14366d1739fa8a18c83100636d74dcaa2	2026-07-03 21:12:01.222804
12	add-automatic-avif-detection-flag	8e92e1266eb29518b6a4c5313ab8f29dd0d08df9	2026-07-03 21:12:01.231127
13	add-bucket-custom-limits	cce962054138135cd9a8c4bcd531598684b25e7d	2026-07-03 21:12:01.23737
14	use-bytes-for-max-size	941c41b346f9802b411f06f30e972ad4744dad27	2026-07-03 21:12:01.243625
15	add-can-insert-object-function	934146bc38ead475f4ef4b555c524ee5d66799e5	2026-07-03 21:12:01.270415
16	add-version	76debf38d3fd07dcfc747ca49096457d95b1221b	2026-07-03 21:12:01.278645
17	drop-owner-foreign-key	f1cbb288f1b7a4c1eb8c38504b80ae2a0153d101	2026-07-03 21:12:01.28646
18	add_owner_id_column_deprecate_owner	e7a511b379110b08e2f214be852c35414749fe66	2026-07-03 21:12:01.29273
19	alter-default-value-objects-id	02e5e22a78626187e00d173dc45f58fa66a4f043	2026-07-03 21:12:01.302912
20	list-objects-with-delimiter	cd694ae708e51ba82bf012bba00caf4f3b6393b7	2026-07-03 21:12:01.30951
21	s3-multipart-uploads	8c804d4a566c40cd1e4cc5b3725a664a9303657f	2026-07-03 21:12:01.319286
22	s3-multipart-uploads-big-ints	9737dc258d2397953c9953d9b86920b8be0cdb73	2026-07-03 21:12:01.332356
23	optimize-search-function	9d7e604cddc4b56a5422dc68c9313f4a1b6f132c	2026-07-03 21:12:01.344036
24	operation-function	8312e37c2bf9e76bbe841aa5fda889206d2bf8aa	2026-07-03 21:12:01.351981
25	custom-metadata	d974c6057c3db1c1f847afa0e291e6165693b990	2026-07-03 21:12:01.358368
26	objects-prefixes	215cabcb7f78121892a5a2037a09fedf9a1ae322	2026-07-03 21:12:01.364989
27	search-v2	859ba38092ac96eb3964d83bf53ccc0b141663a6	2026-07-03 21:12:01.370984
28	object-bucket-name-sorting	c73a2b5b5d4041e39705814fd3a1b95502d38ce4	2026-07-03 21:12:01.377836
29	create-prefixes	ad2c1207f76703d11a9f9007f821620017a66c21	2026-07-03 21:12:01.383771
30	update-object-levels	2be814ff05c8252fdfdc7cfb4b7f5c7e17f0bed6	2026-07-03 21:12:01.389599
31	objects-level-index	b40367c14c3440ec75f19bbce2d71e914ddd3da0	2026-07-03 21:12:01.427742
32	backward-compatible-index-on-objects	e0c37182b0f7aee3efd823298fb3c76f1042c0f7	2026-07-03 21:12:01.474948
33	backward-compatible-index-on-prefixes	b480e99ed951e0900f033ec4eb34b5bdcb4e3d49	2026-07-03 21:12:01.481331
34	optimize-search-function-v1	ca80a3dc7bfef894df17108785ce29a7fc8ee456	2026-07-03 21:12:01.499607
35	add-insert-trigger-prefixes	458fe0ffd07ec53f5e3ce9df51bfdf4861929ccc	2026-07-03 21:12:01.520153
36	optimise-existing-functions	6ae5fca6af5c55abe95369cd4f93985d1814ca8f	2026-07-03 21:12:01.576838
37	add-bucket-name-length-trigger	3944135b4e3e8b22d6d4cbb568fe3b0b51df15c1	2026-07-03 21:12:01.582741
38	iceberg-catalog-flag-on-buckets	02716b81ceec9705aed84aa1501657095b32e5c5	2026-07-03 21:12:01.591814
39	add-search-v2-sort-support	6706c5f2928846abee18461279799ad12b279b78	2026-07-03 21:12:01.601772
40	fix-prefix-race-conditions-optimized	7ad69982ae2d372b21f48fc4829ae9752c518f6b	2026-07-03 21:12:01.607441
41	add-object-level-update-trigger	07fcf1a22165849b7a029deed059ffcde08d1ae0	2026-07-03 21:12:01.613159
42	rollback-prefix-triggers	771479077764adc09e2ea2043eb627503c034cd4	2026-07-03 21:12:01.61893
43	fix-object-level	84b35d6caca9d937478ad8a797491f38b8c2979f	2026-07-03 21:12:01.625994
44	vector-bucket-type	99c20c0ffd52bb1ff1f32fb992f3b351e3ef8fb3	2026-07-03 21:12:01.631811
45	vector-buckets	049e27196d77a7cb76497a85afae669d8b230953	2026-07-03 21:12:01.638254
46	buckets-objects-grants	fedeb96d60fefd8e02ab3ded9fbde05632f84aed	2026-07-03 21:12:01.650452
47	iceberg-table-metadata	649df56855c24d8b36dd4cc1aeb8251aa9ad42c2	2026-07-03 21:12:01.656851
48	iceberg-catalog-ids	e0e8b460c609b9999ccd0df9ad14294613eed939	2026-07-03 21:12:01.662865
49	buckets-objects-grants-postgres	072b1195d0d5a2f888af6b2302a1938dd94b8b3d	2026-07-03 21:12:01.68054
50	search-v2-optimised	6323ac4f850aa14e7387eb32102869578b5bd478	2026-07-03 21:12:01.68706
51	index-backward-compatible-search	2ee395d433f76e38bcd3856debaf6e0e5b674011	2026-07-03 21:12:01.770755
52	drop-not-used-indexes-and-functions	5cc44c8696749ac11dd0dc37f2a3802075f3a171	2026-07-03 21:12:01.773106
53	drop-index-lower-name	d0cb18777d9e2a98ebe0bc5cc7a42e57ebe41854	2026-07-03 21:12:01.784164
54	drop-index-object-level	6289e048b1472da17c31a7eba1ded625a6457e67	2026-07-03 21:12:01.787798
55	prevent-direct-deletes	262a4798d5e0f2e7c8970232e03ce8be695d5819	2026-07-03 21:12:01.790153
56	fix-optimized-search-function	b823ed1e418101032fa01374edc9a436e54e3ed4	2026-07-03 21:12:01.79713
57	s3-multipart-uploads-metadata	f127886e00d1b374fadbc7c6b31e09336aad5287	2026-07-03 21:12:01.804295
58	operation-ergonomics	00ca5d483b3fe0d522133d9002ccc5df98365120	2026-07-03 21:12:01.810563
59	drop-unused-functions	38456f13e39691c2bbb4b5151d0d1cdbabd4a8c4	2026-07-03 21:12:01.817307
60	optimize-existing-functions-again	db35e1c91a9201e59f4fef8d972c2f277d68b157	2026-07-03 21:12:01.823497
61	mark-filename-immutable	fe0096517ae9d60aaec1d110172ba9036dc66bb7	2026-08-12 19:24:16.863514
62	object-versioning-core	0b855f00ff3be0bfca91efee02a9858912491a9a	2026-08-21 08:20:04.641684
63	fix-search-name-relative-to-prefix	c7485e417624f795ce8bb2da21927f48e088904d	2026-08-26 11:31:19.629332
64	fix-search-by-timestamp-sqli	0af424ecd388a39bb1645184b222185a12149675	2026-08-26 11:31:19.664692
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata, archived_at, is_delete_marker, is_versioned) FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata, metadata) FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.vector_indexes (id, name, bucket_id, data_type, dimension, distance_metric, metadata_configuration, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 268, true);


--
-- Name: jornada_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jornada_numero_seq', 15, true);


--
-- Name: subscription_id_seq; Type: SEQUENCE SET; Schema: realtime; Owner: supabase_realtime_admin
--

SELECT pg_catalog.setval('realtime.subscription_id_seq', 197, true);


--
-- Name: mfa_amr_claims amr_id_pk; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);


--
-- Name: audit_log_entries audit_log_entries_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);


--
-- Name: custom_oauth_providers custom_oauth_providers_identifier_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.custom_oauth_providers
    ADD CONSTRAINT custom_oauth_providers_identifier_key UNIQUE (identifier);


--
-- Name: custom_oauth_providers custom_oauth_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.custom_oauth_providers
    ADD CONSTRAINT custom_oauth_providers_pkey PRIMARY KEY (id);


--
-- Name: flow_state flow_state_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: identities identities_provider_id_provider_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);


--
-- Name: instances instances_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);


--
-- Name: mfa_challenges mfa_challenges_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);


--
-- Name: mfa_factors mfa_factors_last_challenged_at_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);


--
-- Name: mfa_factors mfa_factors_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_code_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_code_key UNIQUE (authorization_code);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_id_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_id_key UNIQUE (authorization_id);


--
-- Name: oauth_authorizations oauth_authorizations_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_pkey PRIMARY KEY (id);


--
-- Name: oauth_client_states oauth_client_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_client_states
    ADD CONSTRAINT oauth_client_states_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_user_client_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_client_unique UNIQUE (user_id, client_id);


--
-- Name: one_time_tokens one_time_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_token_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);


--
-- Name: saml_providers saml_providers_entity_id_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);


--
-- Name: saml_providers saml_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);


--
-- Name: saml_relay_states saml_relay_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sso_domains sso_domains_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);


--
-- Name: sso_providers sso_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: webauthn_challenges webauthn_challenges_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_challenges
    ADD CONSTRAINT webauthn_challenges_pkey PRIMARY KEY (id);


--
-- Name: webauthn_credentials webauthn_credentials_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_credentials
    ADD CONSTRAINT webauthn_credentials_pkey PRIMARY KEY (id);


--
-- Name: abono_proveedor abono_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abono_proveedor
    ADD CONSTRAINT abono_proveedor_pkey PRIMARY KEY (id);


--
-- Name: cambio_tasa_prestamo cambio_tasa_prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cambio_tasa_prestamo
    ADD CONSTRAINT cambio_tasa_prestamo_pkey PRIMARY KEY (id);


--
-- Name: abono_proveedor chk_abono_monto_positivo; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.abono_proveedor
    ADD CONSTRAINT chk_abono_monto_positivo CHECK ((monto > (0)::numeric)) NOT VALID;


--
-- Name: gasto_operativo chk_gasto_monto_positivo; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.gasto_operativo
    ADD CONSTRAINT chk_gasto_monto_positivo CHECK ((monto > (0)::numeric)) NOT VALID;


--
-- Name: proceso_secado chk_proceso_baba_positivo; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.proceso_secado
    ADD CONSTRAINT chk_proceso_baba_positivo CHECK ((kg_baba_entrada > (0)::numeric)) NOT VALID;


--
-- Name: venta_importadora chk_venta_cobro_no_negativo; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.venta_importadora
    ADD CONSTRAINT chk_venta_cobro_no_negativo CHECK (((monto_cobrado >= (0)::numeric) AND (saldo_cobrar >= (0)::numeric))) NOT VALID;


--
-- Name: venta_importadora chk_venta_valores_positivos; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.venta_importadora
    ADD CONSTRAINT chk_venta_valores_positivos CHECK (((volumen_kg > (0)::numeric) AND (precio_venta > (0)::numeric))) NOT VALID;


--
-- Name: cobro_importadora cobro_importadora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cobro_importadora
    ADD CONSTRAINT cobro_importadora_pkey PRIMARY KEY (id);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);


--
-- Name: condonacion_mora condonacion_mora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condonacion_mora
    ADD CONSTRAINT condonacion_mora_pkey PRIMARY KEY (id);


--
-- Name: config_sistema config_sistema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.config_sistema
    ADD CONSTRAINT config_sistema_pkey PRIMARY KEY (clave);


--
-- Name: contenedor_equivalencia contenedor_equivalencia_contenedor_id_tipo_cacao_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contenedor_equivalencia
    ADD CONSTRAINT contenedor_equivalencia_contenedor_id_tipo_cacao_key UNIQUE (contenedor_id, tipo_cacao);


--
-- Name: contenedor_equivalencia contenedor_equivalencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contenedor_equivalencia
    ADD CONSTRAINT contenedor_equivalencia_pkey PRIMARY KEY (id);


--
-- Name: contenedor contenedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contenedor
    ADD CONSTRAINT contenedor_pkey PRIMARY KEY (id);


--
-- Name: cuota_prestamo cuota_prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuota_prestamo
    ADD CONSTRAINT cuota_prestamo_pkey PRIMARY KEY (id);


--
-- Name: cuota_prestamo cuota_prestamo_prestamo_id_numero_cuota_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuota_prestamo
    ADD CONSTRAINT cuota_prestamo_prestamo_id_numero_cuota_key UNIQUE (prestamo_id, numero_cuota);


--
-- Name: desembolso_prestamo desembolso_prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desembolso_prestamo
    ADD CONSTRAINT desembolso_prestamo_pkey PRIMARY KEY (id);


--
-- Name: finca_proveedor finca_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finca_proveedor
    ADD CONSTRAINT finca_proveedor_pkey PRIMARY KEY (id);


--
-- Name: finca_proveedor finca_proveedor_proveedor_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finca_proveedor
    ADD CONSTRAINT finca_proveedor_proveedor_id_key UNIQUE (proveedor_id);


--
-- Name: fondo_diario fondo_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fondo_diario
    ADD CONSTRAINT fondo_diario_pkey PRIMARY KEY (id);


--
-- Name: gasto_operativo gasto_operativo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gasto_operativo
    ADD CONSTRAINT gasto_operativo_pkey PRIMARY KEY (id);


--
-- Name: importadora importadora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.importadora
    ADD CONSTRAINT importadora_pkey PRIMARY KEY (id);


--
-- Name: jornada jornada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_pkey PRIMARY KEY (id);


--
-- Name: pago_prestamo pago_prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_prestamo
    ADD CONSTRAINT pago_prestamo_pkey PRIMARY KEY (id);


--
-- Name: permiso_usuario permiso_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_pkey PRIMARY KEY (usuario_id, permiso);


--
-- Name: precio_diario precio_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precio_diario
    ADD CONSTRAINT precio_diario_pkey PRIMARY KEY (id);


--
-- Name: prestamo prestamo_monto_positivo; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.prestamo
    ADD CONSTRAINT prestamo_monto_positivo CHECK ((monto_principal > (0)::numeric)) NOT VALID;


--
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (id);


--
-- Name: prestamo prestamo_saldos_no_negativos; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.prestamo
    ADD CONSTRAINT prestamo_saldos_no_negativos CHECK (((saldo_capital >= (0)::numeric) AND (interes_acumulado >= (0)::numeric) AND (mora_acumulada >= (0)::numeric))) NOT VALID;


--
-- Name: proceso_secado proceso_secado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proceso_secado
    ADD CONSTRAINT proceso_secado_pkey PRIMARY KEY (id);


--
-- Name: proveedor proveedor_cedula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_cedula_key UNIQUE (cedula);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id);


--
-- Name: scoring_proveedor scoring_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scoring_proveedor
    ADD CONSTRAINT scoring_proveedor_pkey PRIMARY KEY (id);


--
-- Name: scoring_proveedor scoring_proveedor_proveedor_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scoring_proveedor
    ADD CONSTRAINT scoring_proveedor_proveedor_id_key UNIQUE (proveedor_id);


--
-- Name: secado_compras secado_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secado_compras
    ADD CONSTRAINT secado_compras_pkey PRIMARY KEY (secado_id, compra_id);


--
-- Name: unidad_conversion unidad_conversion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidad_conversion
    ADD CONSTRAINT unidad_conversion_pkey PRIMARY KEY (unidad);


--
-- Name: contenedor_equivalencia uq_contenedor_equivalencia_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contenedor_equivalencia
    ADD CONSTRAINT uq_contenedor_equivalencia_tipo UNIQUE (contenedor_id, tipo_cacao);


--
-- Name: cuota_prestamo uq_cuota_prestamo_numero; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuota_prestamo
    ADD CONSTRAINT uq_cuota_prestamo_numero UNIQUE (prestamo_id, numero_cuota);


--
-- Name: usuario usuario_auth_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_auth_user_id_key UNIQUE (auth_user_id);


--
-- Name: usuario usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: vendedor vendedor_cedula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_cedula_key UNIQUE (cedula);


--
-- Name: vendedor vendedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id);


--
-- Name: vendedor vendedor_usuario_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_usuario_id_key UNIQUE (usuario_id);


--
-- Name: venta_importadora venta_importadora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_importadora
    ADD CONSTRAINT venta_importadora_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_26 messages_2026_08_26_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_26
    ADD CONSTRAINT messages_2026_08_26_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_27 messages_2026_08_27_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_27
    ADD CONSTRAINT messages_2026_08_27_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_28 messages_2026_08_28_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_28
    ADD CONSTRAINT messages_2026_08_28_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_29 messages_2026_08_29_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_29
    ADD CONSTRAINT messages_2026_08_29_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_30 messages_2026_08_30_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_30
    ADD CONSTRAINT messages_2026_08_30_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_08_31 messages_2026_08_31_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_08_31
    ADD CONSTRAINT messages_2026_08_31_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_09_01 messages_2026_09_01_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages_2026_09_01
    ADD CONSTRAINT messages_2026_09_01_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages messages_payload_exclusive; Type: CHECK CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE realtime.messages
    ADD CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL))) NOT VALID;


--
-- Name: subscription pk_subscription; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_admin
--

ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: buckets_analytics buckets_analytics_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets_analytics
    ADD CONSTRAINT buckets_analytics_pkey PRIMARY KEY (id);


--
-- Name: buckets buckets_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);


--
-- Name: buckets_vectors buckets_vectors_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets_vectors
    ADD CONSTRAINT buckets_vectors_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_name_key; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: objects objects_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);


--
-- Name: vector_indexes vector_indexes_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_pkey PRIMARY KEY (id);


--
-- Name: audit_logs_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);


--
-- Name: confirmation_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: custom_oauth_providers_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_created_at_idx ON auth.custom_oauth_providers USING btree (created_at);


--
-- Name: custom_oauth_providers_enabled_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_enabled_idx ON auth.custom_oauth_providers USING btree (enabled);


--
-- Name: custom_oauth_providers_identifier_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_identifier_idx ON auth.custom_oauth_providers USING btree (identifier);


--
-- Name: custom_oauth_providers_provider_type_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_provider_type_idx ON auth.custom_oauth_providers USING btree (provider_type);


--
-- Name: email_change_token_current_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);


--
-- Name: email_change_token_new_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);


--
-- Name: factor_id_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);


--
-- Name: flow_state_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);


--
-- Name: identities_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);


--
-- Name: INDEX identities_email_idx; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';


--
-- Name: identities_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);


--
-- Name: idx_auth_code; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);


--
-- Name: idx_oauth_client_states_created_at; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_oauth_client_states_created_at ON auth.oauth_client_states USING btree (created_at);


--
-- Name: idx_user_id_auth_method; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);


--
-- Name: idx_users_created_at_desc; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_created_at_desc ON auth.users USING btree (created_at DESC);


--
-- Name: idx_users_email; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_email ON auth.users USING btree (email);


--
-- Name: idx_users_last_sign_in_at_desc; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_last_sign_in_at_desc ON auth.users USING btree (last_sign_in_at DESC);


--
-- Name: idx_users_name; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_name ON auth.users USING btree (((raw_user_meta_data ->> 'name'::text))) WHERE ((raw_user_meta_data ->> 'name'::text) IS NOT NULL);


--
-- Name: mfa_challenge_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);


--
-- Name: mfa_factors_user_friendly_name_unique; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);


--
-- Name: mfa_factors_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);


--
-- Name: oauth_auth_pending_exp_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_auth_pending_exp_idx ON auth.oauth_authorizations USING btree (expires_at) WHERE (status = 'pending'::auth.oauth_authorization_status);


--
-- Name: oauth_clients_deleted_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_clients_deleted_at_idx ON auth.oauth_clients USING btree (deleted_at);


--
-- Name: oauth_consents_active_client_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_active_client_idx ON auth.oauth_consents USING btree (client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_active_user_client_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_active_user_client_idx ON auth.oauth_consents USING btree (user_id, client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_user_order_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_user_order_idx ON auth.oauth_consents USING btree (user_id, granted_at DESC);


--
-- Name: one_time_tokens_relates_to_hash_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);


--
-- Name: one_time_tokens_token_hash_hash_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);


--
-- Name: one_time_tokens_user_id_token_type_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);


--
-- Name: reauthentication_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: recovery_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: refresh_tokens_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);


--
-- Name: refresh_tokens_instance_id_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);


--
-- Name: refresh_tokens_parent_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);


--
-- Name: refresh_tokens_session_id_revoked_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);


--
-- Name: refresh_tokens_updated_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);


--
-- Name: saml_providers_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);


--
-- Name: saml_relay_states_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);


--
-- Name: saml_relay_states_for_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);


--
-- Name: saml_relay_states_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);


--
-- Name: sessions_not_after_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);


--
-- Name: sessions_oauth_client_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_oauth_client_id_idx ON auth.sessions USING btree (oauth_client_id);


--
-- Name: sessions_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);


--
-- Name: sso_domains_domain_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));


--
-- Name: sso_domains_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);


--
-- Name: sso_providers_resource_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));


--
-- Name: sso_providers_resource_id_pattern_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sso_providers_resource_id_pattern_idx ON auth.sso_providers USING btree (resource_id text_pattern_ops);


--
-- Name: unique_phone_factor_per_user; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);


--
-- Name: user_id_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);


--
-- Name: users_email_partial_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);


--
-- Name: INDEX users_email_partial_key; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';


--
-- Name: users_instance_id_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));


--
-- Name: users_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);


--
-- Name: users_is_anonymous_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);


--
-- Name: webauthn_challenges_expires_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_challenges_expires_at_idx ON auth.webauthn_challenges USING btree (expires_at);


--
-- Name: webauthn_challenges_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_challenges_user_id_idx ON auth.webauthn_challenges USING btree (user_id);


--
-- Name: webauthn_credentials_credential_id_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX webauthn_credentials_credential_id_key ON auth.webauthn_credentials USING btree (credential_id);


--
-- Name: webauthn_credentials_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_credentials_user_id_idx ON auth.webauthn_credentials USING btree (user_id);


--
-- Name: idx_abono_jornada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_abono_jornada ON public.abono_proveedor USING btree (jornada_id);


--
-- Name: idx_abono_proveedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_abono_proveedor ON public.abono_proveedor USING btree (proveedor_id);


--
-- Name: idx_cambio_tasa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cambio_tasa ON public.cambio_tasa_prestamo USING btree (prestamo_id, created_at DESC);


--
-- Name: idx_cobro_importadora; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cobro_importadora ON public.cobro_importadora USING btree (importadora_id);


--
-- Name: idx_cobro_venta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cobro_venta ON public.cobro_importadora USING btree (venta_id);


--
-- Name: idx_compra_estado_pago; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_estado_pago ON public.compra USING btree (estado_pago) WHERE (estado_pago <> 'pagado'::public.estado_pago);


--
-- Name: idx_compra_estado_sync; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_estado_sync ON public.compra USING btree (estado_sync);


--
-- Name: idx_compra_jornada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_jornada ON public.compra USING btree (jornada_id);


--
-- Name: idx_compra_jornada_vendedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_jornada_vendedor ON public.compra USING btree (jornada_id, vendedor_id);


--
-- Name: idx_compra_precio_manual; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_precio_manual ON public.compra USING btree (timestamp_local DESC) WHERE (precio_manual = true);


--
-- Name: idx_compra_proveedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_proveedor ON public.compra USING btree (proveedor_id);


--
-- Name: idx_compra_proveedor_pago; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_proveedor_pago ON public.compra USING btree (proveedor_id, estado_pago);


--
-- Name: idx_compra_timestamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_timestamp ON public.compra USING btree (timestamp_local);


--
-- Name: idx_compra_vendedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_compra_vendedor ON public.compra USING btree (vendedor_id);


--
-- Name: idx_cuota_prestamo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cuota_prestamo ON public.cuota_prestamo USING btree (prestamo_id);


--
-- Name: idx_desembolso_prestamo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desembolso_prestamo ON public.desembolso_prestamo USING btree (prestamo_id, fecha);


--
-- Name: idx_fondo_jornada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fondo_jornada ON public.fondo_diario USING btree (jornada_id);


--
-- Name: idx_jornada_abierta_en; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_jornada_abierta_en ON public.jornada USING btree (abierta_en DESC);


--
-- Name: idx_jornada_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_jornada_fecha ON public.jornada USING btree (fecha_apertura DESC);


--
-- Name: idx_pago_prestamo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_pago_prestamo ON public.pago_prestamo USING btree (prestamo_id);


--
-- Name: idx_permiso_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_permiso_usuario ON public.permiso_usuario USING btree (usuario_id);


--
-- Name: idx_precio_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_precio_fecha ON public.precio_diario USING btree (fecha DESC);


--
-- Name: idx_precio_jornada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_precio_jornada ON public.precio_diario USING btree (jornada_id, vigente_desde DESC);


--
-- Name: idx_prestamo_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_prestamo_estado ON public.prestamo USING btree (estado);


--
-- Name: idx_prestamo_proveedor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_prestamo_proveedor ON public.prestamo USING btree (proveedor_id);


--
-- Name: idx_proveedor_vende_cacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_proveedor_vende_cacao ON public.proveedor USING btree (nombre) WHERE ((activo = true) AND (vende_cacao = true));


--
-- Name: idx_secado_compras; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_secado_compras ON public.secado_compras USING btree (compra_id);


--
-- Name: idx_secado_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_secado_estado ON public.proceso_secado USING btree (estado);


--
-- Name: idx_secado_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_secado_fecha ON public.proceso_secado USING btree (fecha_inicio DESC);


--
-- Name: idx_venta_estado_cobro; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_venta_estado_cobro ON public.venta_importadora USING btree (estado_cobro);


--
-- Name: idx_venta_importadora; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_venta_importadora ON public.venta_importadora USING btree (importadora_id);


--
-- Name: importadora_nombre_fiscal_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX importadora_nombre_fiscal_idx ON public.importadora USING btree (nombre_fiscal);


--
-- Name: uniq_jornada_abierta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_jornada_abierta ON public.jornada USING btree (estado) WHERE (estado = 'abierta'::text);


--
-- Name: uq_contenedor_nombre; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uq_contenedor_nombre ON public.contenedor USING btree (lower(nombre));


--
-- Name: uq_fondo_vendedor_jornada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uq_fondo_vendedor_jornada ON public.fondo_diario USING btree (vendedor_id, jornada_id) WHERE (jornada_id IS NOT NULL);


--
-- Name: ix_realtime_subscription_entity; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);


--
-- Name: messages_inserted_at_topic_index; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_inserted_at_topic_index ON ONLY realtime.messages USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_26_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_26_inserted_at_topic_idx ON realtime.messages_2026_08_26 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_27_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_27_inserted_at_topic_idx ON realtime.messages_2026_08_27 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_28_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_28_inserted_at_topic_idx ON realtime.messages_2026_08_28 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_29_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_29_inserted_at_topic_idx ON realtime.messages_2026_08_29 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_30_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_30_inserted_at_topic_idx ON realtime.messages_2026_08_30 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_08_31_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_08_31_inserted_at_topic_idx ON realtime.messages_2026_08_31 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_09_01_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_2026_09_01_inserted_at_topic_idx ON realtime.messages_2026_09_01 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: subscription_subscription_id_entity_filters_action_filter_selec; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_action_filter_selec ON realtime.subscription USING btree (subscription_id, entity, filters, action_filter, COALESCE(selected_columns, '{}'::text[]));


--
-- Name: bname; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);


--
-- Name: bucketid_objname; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);


--
-- Name: buckets_analytics_unique_name_idx; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX buckets_analytics_unique_name_idx ON storage.buckets_analytics USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: idx_multipart_uploads_list; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);


--
-- Name: idx_objects_bucket_id_name; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");


--
-- Name: idx_objects_bucket_id_name_lower; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_objects_bucket_id_name_lower ON storage.objects USING btree (bucket_id, lower(name) COLLATE "C");


--
-- Name: name_prefix_search; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);


--
-- Name: vector_indexes_name_bucket_id_idx; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX vector_indexes_name_bucket_id_idx ON storage.vector_indexes USING btree (name, bucket_id);


--
-- Name: messages_2026_08_26_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_26_inserted_at_topic_idx;


--
-- Name: messages_2026_08_26_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_26_pkey;


--
-- Name: messages_2026_08_27_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_27_inserted_at_topic_idx;


--
-- Name: messages_2026_08_27_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_27_pkey;


--
-- Name: messages_2026_08_28_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_28_inserted_at_topic_idx;


--
-- Name: messages_2026_08_28_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_28_pkey;


--
-- Name: messages_2026_08_29_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_29_inserted_at_topic_idx;


--
-- Name: messages_2026_08_29_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_29_pkey;


--
-- Name: messages_2026_08_30_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_30_inserted_at_topic_idx;


--
-- Name: messages_2026_08_30_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_30_pkey;


--
-- Name: messages_2026_08_31_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_08_31_inserted_at_topic_idx;


--
-- Name: messages_2026_08_31_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_08_31_pkey;


--
-- Name: messages_2026_09_01_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_09_01_inserted_at_topic_idx;


--
-- Name: messages_2026_09_01_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_09_01_pkey;


--
-- Name: cobro_importadora trg_aplicar_cobro_importadora; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_aplicar_cobro_importadora AFTER INSERT ON public.cobro_importadora FOR EACH ROW EXECUTE FUNCTION public.aplicar_cobro_importadora();


--
-- Name: prestamo trg_desembolso_inicial; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_desembolso_inicial AFTER INSERT ON public.prestamo FOR EACH ROW EXECUTE FUNCTION public.crear_desembolso_inicial();


--
-- Name: venta_importadora trg_init_venta_importadora; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_init_venta_importadora BEFORE INSERT ON public.venta_importadora FOR EACH ROW EXECUTE FUNCTION public.init_venta_importadora();


--
-- Name: prestamo trg_interes_desembolso; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_interes_desembolso BEFORE INSERT ON public.prestamo FOR EACH ROW EXECUTE FUNCTION public.aplicar_interes_desembolso();


--
-- Name: compra trg_ocasional_sin_deuda; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_ocasional_sin_deuda BEFORE INSERT OR UPDATE ON public.compra FOR EACH ROW EXECUTE FUNCTION public.enforce_ocasional_sin_deuda();


--
-- Name: prestamo trg_prestamo_solo_registrado; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_prestamo_solo_registrado BEFORE INSERT OR UPDATE OF proveedor_id ON public.prestamo FOR EACH ROW EXECUTE FUNCTION public.enforce_prestamo_solo_registrado();


--
-- Name: abono_proveedor trg_resolver_jornada_abono; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_resolver_jornada_abono BEFORE INSERT ON public.abono_proveedor FOR EACH ROW EXECUTE FUNCTION public.resolver_jornada_abono();


--
-- Name: compra trg_resolver_jornada_compra; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_resolver_jornada_compra BEFORE INSERT ON public.compra FOR EACH ROW EXECUTE FUNCTION public.resolver_jornada_compra();


--
-- Name: abono_proveedor trg_sellar_registrado_por; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_sellar_registrado_por BEFORE INSERT ON public.abono_proveedor FOR EACH ROW EXECUTE FUNCTION public.sellar_registrado_por();


--
-- Name: cobro_importadora trg_sellar_registrado_por; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_sellar_registrado_por BEFORE INSERT ON public.cobro_importadora FOR EACH ROW EXECUTE FUNCTION public.sellar_registrado_por();


--
-- Name: gasto_operativo trg_sellar_registrado_por; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_sellar_registrado_por BEFORE INSERT ON public.gasto_operativo FOR EACH ROW EXECUTE FUNCTION public.sellar_registrado_por();


--
-- Name: proceso_secado trg_sellar_registrado_por; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_sellar_registrado_por BEFORE INSERT ON public.proceso_secado FOR EACH ROW EXECUTE FUNCTION public.sellar_registrado_por();


--
-- Name: venta_importadora trg_sellar_registrado_por; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_sellar_registrado_por BEFORE INSERT ON public.venta_importadora FOR EACH ROW EXECUTE FUNCTION public.sellar_registrado_por();


--
-- Name: subscription tr_check_filters; Type: TRIGGER; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();


--
-- Name: buckets enforce_bucket_name_length_trigger; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER enforce_bucket_name_length_trigger BEFORE INSERT OR UPDATE OF name ON storage.buckets FOR EACH ROW EXECUTE FUNCTION storage.enforce_bucket_name_length();


--
-- Name: buckets protect_buckets_delete; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER protect_buckets_delete BEFORE DELETE ON storage.buckets FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects protect_objects_delete; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER protect_objects_delete BEFORE DELETE ON storage.objects FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects update_objects_updated_at; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();


--
-- Name: identities identities_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: mfa_challenges mfa_challenges_auth_factor_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;


--
-- Name: mfa_factors mfa_factors_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: one_time_tokens one_time_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: refresh_tokens refresh_tokens_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: saml_providers saml_providers_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_flow_state_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_oauth_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_oauth_client_id_fkey FOREIGN KEY (oauth_client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: sso_domains sso_domains_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: webauthn_challenges webauthn_challenges_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_challenges
    ADD CONSTRAINT webauthn_challenges_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: webauthn_credentials webauthn_credentials_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_credentials
    ADD CONSTRAINT webauthn_credentials_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: abono_proveedor abono_proveedor_compra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abono_proveedor
    ADD CONSTRAINT abono_proveedor_compra_id_fkey FOREIGN KEY (compra_id) REFERENCES public.compra(id);


--
-- Name: abono_proveedor abono_proveedor_jornada_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abono_proveedor
    ADD CONSTRAINT abono_proveedor_jornada_id_fkey FOREIGN KEY (jornada_id) REFERENCES public.jornada(id);


--
-- Name: abono_proveedor abono_proveedor_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abono_proveedor
    ADD CONSTRAINT abono_proveedor_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);


--
-- Name: cambio_tasa_prestamo cambio_tasa_prestamo_cambiado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cambio_tasa_prestamo
    ADD CONSTRAINT cambio_tasa_prestamo_cambiado_por_fkey FOREIGN KEY (cambiado_por) REFERENCES public.usuario(id);


--
-- Name: cambio_tasa_prestamo cambio_tasa_prestamo_prestamo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cambio_tasa_prestamo
    ADD CONSTRAINT cambio_tasa_prestamo_prestamo_id_fkey FOREIGN KEY (prestamo_id) REFERENCES public.prestamo(id) ON DELETE CASCADE;


--
-- Name: cobro_importadora cobro_importadora_importadora_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cobro_importadora
    ADD CONSTRAINT cobro_importadora_importadora_id_fkey FOREIGN KEY (importadora_id) REFERENCES public.importadora(id);


--
-- Name: cobro_importadora cobro_importadora_venta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cobro_importadora
    ADD CONSTRAINT cobro_importadora_venta_id_fkey FOREIGN KEY (venta_id) REFERENCES public.venta_importadora(id);


--
-- Name: compra compra_anulada_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_anulada_por_fkey FOREIGN KEY (anulada_por) REFERENCES public.usuario(id);


--
-- Name: compra compra_contenedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_contenedor_id_fkey FOREIGN KEY (contenedor_id) REFERENCES public.contenedor(id);


--
-- Name: compra compra_jornada_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_jornada_id_fkey FOREIGN KEY (jornada_id) REFERENCES public.jornada(id);


--
-- Name: compra compra_precio_diario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_precio_diario_id_fkey FOREIGN KEY (precio_diario_id) REFERENCES public.precio_diario(id);


--
-- Name: compra compra_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);


--
-- Name: compra compra_vendedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_vendedor_id_fkey FOREIGN KEY (vendedor_id) REFERENCES public.vendedor(id);


--
-- Name: condonacion_mora condonacion_mora_autorizado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condonacion_mora
    ADD CONSTRAINT condonacion_mora_autorizado_por_fkey FOREIGN KEY (autorizado_por) REFERENCES public.usuario(id);


--
-- Name: condonacion_mora condonacion_mora_prestamo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condonacion_mora
    ADD CONSTRAINT condonacion_mora_prestamo_id_fkey FOREIGN KEY (prestamo_id) REFERENCES public.prestamo(id);


--
-- Name: contenedor_equivalencia contenedor_equivalencia_contenedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contenedor_equivalencia
    ADD CONSTRAINT contenedor_equivalencia_contenedor_id_fkey FOREIGN KEY (contenedor_id) REFERENCES public.contenedor(id);


--
-- Name: cuota_prestamo cuota_prestamo_prestamo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuota_prestamo
    ADD CONSTRAINT cuota_prestamo_prestamo_id_fkey FOREIGN KEY (prestamo_id) REFERENCES public.prestamo(id);


--
-- Name: desembolso_prestamo desembolso_prestamo_prestamo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desembolso_prestamo
    ADD CONSTRAINT desembolso_prestamo_prestamo_id_fkey FOREIGN KEY (prestamo_id) REFERENCES public.prestamo(id) ON DELETE CASCADE;


--
-- Name: desembolso_prestamo desembolso_prestamo_registrado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desembolso_prestamo
    ADD CONSTRAINT desembolso_prestamo_registrado_por_fkey FOREIGN KEY (registrado_por) REFERENCES public.usuario(id);


--
-- Name: finca_proveedor finca_proveedor_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finca_proveedor
    ADD CONSTRAINT finca_proveedor_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id) ON DELETE CASCADE;


--
-- Name: abono_proveedor fk_abono_proveedor_registrado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abono_proveedor
    ADD CONSTRAINT fk_abono_proveedor_registrado_por FOREIGN KEY (registrado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: cobro_importadora fk_cobro_importadora_registrado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cobro_importadora
    ADD CONSTRAINT fk_cobro_importadora_registrado_por FOREIGN KEY (registrado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: gasto_operativo fk_gasto_operativo_registrado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gasto_operativo
    ADD CONSTRAINT fk_gasto_operativo_registrado_por FOREIGN KEY (registrado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: precio_diario fk_precio_diario_fijado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precio_diario
    ADD CONSTRAINT fk_precio_diario_fijado_por FOREIGN KEY (fijado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: proceso_secado fk_proceso_secado_registrado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proceso_secado
    ADD CONSTRAINT fk_proceso_secado_registrado_por FOREIGN KEY (registrado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: venta_importadora fk_venta_importadora_importadora; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_importadora
    ADD CONSTRAINT fk_venta_importadora_importadora FOREIGN KEY (importadora_id) REFERENCES public.importadora(id);


--
-- Name: venta_importadora fk_venta_importadora_registrado_por; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_importadora
    ADD CONSTRAINT fk_venta_importadora_registrado_por FOREIGN KEY (registrado_por) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: fondo_diario fondo_diario_jornada_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fondo_diario
    ADD CONSTRAINT fondo_diario_jornada_id_fkey FOREIGN KEY (jornada_id) REFERENCES public.jornada(id);


--
-- Name: fondo_diario fondo_diario_vendedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fondo_diario
    ADD CONSTRAINT fondo_diario_vendedor_id_fkey FOREIGN KEY (vendedor_id) REFERENCES public.vendedor(id);


--
-- Name: jornada jornada_abierta_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_abierta_por_fkey FOREIGN KEY (abierta_por) REFERENCES public.usuario(id);


--
-- Name: jornada jornada_cerrada_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_cerrada_por_fkey FOREIGN KEY (cerrada_por) REFERENCES public.usuario(id);


--
-- Name: jornada jornada_precio_apertura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_precio_apertura_fkey FOREIGN KEY (precio_apertura_id) REFERENCES public.precio_diario(id);


--
-- Name: jornada jornada_recalculado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_recalculado_por_fkey FOREIGN KEY (recalculado_por) REFERENCES public.usuario(id);


--
-- Name: pago_prestamo pago_prestamo_cuota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_prestamo
    ADD CONSTRAINT pago_prestamo_cuota_id_fkey FOREIGN KEY (cuota_id) REFERENCES public.cuota_prestamo(id);


--
-- Name: pago_prestamo pago_prestamo_prestamo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_prestamo
    ADD CONSTRAINT pago_prestamo_prestamo_id_fkey FOREIGN KEY (prestamo_id) REFERENCES public.prestamo(id);


--
-- Name: pago_prestamo pago_prestamo_registrado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_prestamo
    ADD CONSTRAINT pago_prestamo_registrado_por_fkey FOREIGN KEY (registrado_por) REFERENCES public.usuario(id);


--
-- Name: permiso_usuario permiso_usuario_otorgado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_otorgado_por_fkey FOREIGN KEY (otorgado_por) REFERENCES public.usuario(id);


--
-- Name: permiso_usuario permiso_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id) ON DELETE CASCADE;


--
-- Name: precio_diario precio_diario_jornada_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precio_diario
    ADD CONSTRAINT precio_diario_jornada_id_fkey FOREIGN KEY (jornada_id) REFERENCES public.jornada(id);


--
-- Name: prestamo prestamo_anulado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_anulado_por_fkey FOREIGN KEY (anulado_por) REFERENCES public.usuario(id);


--
-- Name: prestamo prestamo_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);


--
-- Name: prestamo prestamo_registrado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_registrado_por_fkey FOREIGN KEY (registrado_por) REFERENCES public.usuario(id);


--
-- Name: scoring_proveedor scoring_proveedor_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scoring_proveedor
    ADD CONSTRAINT scoring_proveedor_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);


--
-- Name: secado_compras secado_compras_compra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secado_compras
    ADD CONSTRAINT secado_compras_compra_id_fkey FOREIGN KEY (compra_id) REFERENCES public.compra(id);


--
-- Name: secado_compras secado_compras_secado_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secado_compras
    ADD CONSTRAINT secado_compras_secado_id_fkey FOREIGN KEY (secado_id) REFERENCES public.proceso_secado(id) ON DELETE CASCADE;


--
-- Name: vendedor vendedor_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: objects objects_bucketId_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;


--
-- Name: vector_indexes vector_indexes_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets_vectors(id);


--
-- Name: audit_log_entries; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;

--
-- Name: flow_state; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;

--
-- Name: identities; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;

--
-- Name: instances; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_amr_claims; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_challenges; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_factors; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;

--
-- Name: one_time_tokens; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: refresh_tokens; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_providers; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_relay_states; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;

--
-- Name: schema_migrations; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: sessions; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_domains; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_providers; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: users; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;

--
-- Name: importadora Autenticados pueden leer importadoras; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY "Autenticados pueden leer importadoras" ON public.importadora FOR SELECT TO authenticated USING (true);


--
-- Name: importadora Solo admin puede actualizar importadoras; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY "Solo admin puede actualizar importadoras" ON public.importadora FOR UPDATE TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.usuario
  WHERE ((usuario.auth_user_id = auth.uid()) AND (usuario.rol = 'admin'::public.rol_usuario)))));


--
-- Name: importadora Solo admin puede insertar importadoras; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY "Solo admin puede insertar importadoras" ON public.importadora FOR INSERT TO authenticated WITH CHECK ((EXISTS ( SELECT 1
   FROM public.usuario
  WHERE ((usuario.auth_user_id = auth.uid()) AND (usuario.rol = 'admin'::public.rol_usuario)))));


--
-- Name: abono_proveedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.abono_proveedor ENABLE ROW LEVEL SECURITY;

--
-- Name: fondo_diario admins_fondo_diario; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY admins_fondo_diario ON public.fondo_diario USING ((EXISTS ( SELECT 1
   FROM public.usuario u
  WHERE ((u.auth_user_id = auth.uid()) AND (u.rol = 'admin'::public.rol_usuario) AND (u.activo = true))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM public.usuario u
  WHERE ((u.auth_user_id = auth.uid()) AND (u.rol = 'admin'::public.rol_usuario) AND (u.activo = true)))));


--
-- Name: condonacion_mora auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.condonacion_mora USING ((auth.role() = 'authenticated'::text));


--
-- Name: contenedor auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.contenedor USING ((auth.role() = 'authenticated'::text));


--
-- Name: contenedor_equivalencia auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.contenedor_equivalencia USING ((auth.role() = 'authenticated'::text));


--
-- Name: cuota_prestamo auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.cuota_prestamo USING ((auth.role() = 'authenticated'::text));


--
-- Name: finca_proveedor auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.finca_proveedor USING ((auth.role() = 'authenticated'::text));


--
-- Name: fondo_diario auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.fondo_diario USING ((auth.role() = 'authenticated'::text));


--
-- Name: pago_prestamo auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.pago_prestamo USING ((auth.role() = 'authenticated'::text));


--
-- Name: prestamo auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.prestamo USING ((auth.role() = 'authenticated'::text));


--
-- Name: proceso_secado auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.proceso_secado USING ((auth.role() = 'authenticated'::text));


--
-- Name: scoring_proveedor auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.scoring_proveedor USING ((auth.role() = 'authenticated'::text));


--
-- Name: secado_compras auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.secado_compras USING ((auth.role() = 'authenticated'::text));


--
-- Name: usuario auth_all; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_all ON public.usuario USING ((auth.role() = 'authenticated'::text));


--
-- Name: unidad_conversion auth_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY auth_read ON public.unidad_conversion FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: cambio_tasa_prestamo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cambio_tasa_prestamo ENABLE ROW LEVEL SECURITY;

--
-- Name: cambio_tasa_prestamo cambio_tasa_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY cambio_tasa_read ON public.cambio_tasa_prestamo FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: cambio_tasa_prestamo cambio_tasa_write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY cambio_tasa_write_admin ON public.cambio_tasa_prestamo USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: cobro_importadora; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cobro_importadora ENABLE ROW LEVEL SECURITY;

--
-- Name: compra; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.compra ENABLE ROW LEVEL SECURITY;

--
-- Name: condonacion_mora; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.condonacion_mora ENABLE ROW LEVEL SECURITY;

--
-- Name: config_sistema; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.config_sistema ENABLE ROW LEVEL SECURITY;

--
-- Name: contenedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.contenedor ENABLE ROW LEVEL SECURITY;

--
-- Name: contenedor_equivalencia; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.contenedor_equivalencia ENABLE ROW LEVEL SECURITY;

--
-- Name: cuota_prestamo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cuota_prestamo ENABLE ROW LEVEL SECURITY;

--
-- Name: desembolso_prestamo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.desembolso_prestamo ENABLE ROW LEVEL SECURITY;

--
-- Name: desembolso_prestamo desembolso_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY desembolso_read ON public.desembolso_prestamo FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: desembolso_prestamo desembolso_write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY desembolso_write_admin ON public.desembolso_prestamo USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: finca_proveedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.finca_proveedor ENABLE ROW LEVEL SECURITY;

--
-- Name: finca_proveedor finca_proveedor_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY finca_proveedor_read ON public.finca_proveedor FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: finca_proveedor finca_proveedor_write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY finca_proveedor_write_admin ON public.finca_proveedor USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: fondo_diario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fondo_diario ENABLE ROW LEVEL SECURITY;

--
-- Name: gasto_operativo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.gasto_operativo ENABLE ROW LEVEL SECURITY;

--
-- Name: importadora; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.importadora ENABLE ROW LEVEL SECURITY;

--
-- Name: config_sistema insert_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY insert_authenticated ON public.config_sistema FOR INSERT WITH CHECK ((auth.role() = 'authenticated'::text));


--
-- Name: jornada; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.jornada ENABLE ROW LEVEL SECURITY;

--
-- Name: jornada jornada_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY jornada_read ON public.jornada FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: jornada jornada_write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY jornada_write_admin ON public.jornada USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: pago_prestamo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pago_prestamo ENABLE ROW LEVEL SECURITY;

--
-- Name: permiso_usuario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.permiso_usuario ENABLE ROW LEVEL SECURITY;

--
-- Name: permiso_usuario permiso_usuario_read; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY permiso_usuario_read ON public.permiso_usuario FOR SELECT USING (((usuario_id = public.usuario_actual()) OR public.es_admin()));


--
-- Name: permiso_usuario permiso_usuario_write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY permiso_usuario_write_admin ON public.permiso_usuario USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: precio_diario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.precio_diario ENABLE ROW LEVEL SECURITY;

--
-- Name: prestamo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.prestamo ENABLE ROW LEVEL SECURITY;

--
-- Name: proceso_secado; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.proceso_secado ENABLE ROW LEVEL SECURITY;

--
-- Name: proveedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.proveedor ENABLE ROW LEVEL SECURITY;

--
-- Name: abono_proveedor read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.abono_proveedor FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: cobro_importadora read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.cobro_importadora FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: compra read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.compra FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: config_sistema read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.config_sistema FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: fondo_diario read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.fondo_diario FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: gasto_operativo read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.gasto_operativo FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: importadora read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.importadora FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: precio_diario read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.precio_diario FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: proceso_secado read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.proceso_secado FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: proveedor read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.proveedor FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: secado_compras read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.secado_compras FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: unidad_conversion read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.unidad_conversion FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: usuario read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.usuario FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: vendedor read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.vendedor FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: venta_importadora read_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY read_authenticated ON public.venta_importadora FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: scoring_proveedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.scoring_proveedor ENABLE ROW LEVEL SECURITY;

--
-- Name: secado_compras; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.secado_compras ENABLE ROW LEVEL SECURITY;

--
-- Name: config_sistema select_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY select_authenticated ON public.config_sistema FOR SELECT USING ((auth.role() = 'authenticated'::text));


--
-- Name: unidad_conversion; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.unidad_conversion ENABLE ROW LEVEL SECURITY;

--
-- Name: config_sistema update_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY update_authenticated ON public.config_sistema FOR UPDATE USING ((auth.role() = 'authenticated'::text));


--
-- Name: usuario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ENABLE ROW LEVEL SECURITY;

--
-- Name: vendedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.vendedor ENABLE ROW LEVEL SECURITY;

--
-- Name: venta_importadora; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.venta_importadora ENABLE ROW LEVEL SECURITY;

--
-- Name: cobro_importadora write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.cobro_importadora USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: config_sistema write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.config_sistema USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: gasto_operativo write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.gasto_operativo USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: importadora write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.importadora USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: precio_diario write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.precio_diario USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: proceso_secado write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.proceso_secado USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: secado_compras write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.secado_compras USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: unidad_conversion write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.unidad_conversion USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: usuario write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.usuario USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: vendedor write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.vendedor USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: venta_importadora write_admin; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_admin ON public.venta_importadora USING (public.es_admin()) WITH CHECK (public.es_admin());


--
-- Name: abono_proveedor write_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_authenticated ON public.abono_proveedor USING ((auth.role() = 'authenticated'::text)) WITH CHECK ((auth.role() = 'authenticated'::text));


--
-- Name: compra write_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_authenticated ON public.compra USING ((auth.role() = 'authenticated'::text)) WITH CHECK ((auth.role() = 'authenticated'::text));


--
-- Name: fondo_diario write_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_authenticated ON public.fondo_diario USING ((auth.role() = 'authenticated'::text)) WITH CHECK ((auth.role() = 'authenticated'::text));


--
-- Name: proveedor write_authenticated; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY write_authenticated ON public.proveedor USING ((auth.role() = 'authenticated'::text)) WITH CHECK ((auth.role() = 'authenticated'::text));


--
-- Name: messages; Type: ROW SECURITY; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_analytics; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets_analytics ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_vectors; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets_vectors ENABLE ROW LEVEL SECURITY;

--
-- Name: migrations; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: objects; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads_parts; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;

--
-- Name: vector_indexes; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.vector_indexes ENABLE ROW LEVEL SECURITY;

--
-- Name: supabase_realtime; Type: PUBLICATION; Schema: -; Owner: postgres
--

CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');


ALTER PUBLICATION supabase_realtime OWNER TO postgres;

--
-- Name: supabase_realtime_messages_publication; Type: PUBLICATION; Schema: -; Owner: supabase_admin
--

CREATE PUBLICATION supabase_realtime_messages_publication WITH (publish = 'insert, update, delete, truncate');


ALTER PUBLICATION supabase_realtime_messages_publication OWNER TO supabase_admin;

--
-- Name: supabase_realtime jornada; Type: PUBLICATION TABLE; Schema: public; Owner: postgres
--

ALTER PUBLICATION supabase_realtime ADD TABLE ONLY public.jornada;


--
-- Name: supabase_realtime_messages_publication messages; Type: PUBLICATION TABLE; Schema: realtime; Owner: supabase_admin
--

ALTER PUBLICATION supabase_realtime_messages_publication ADD TABLE ONLY realtime.messages;


--
-- Name: SCHEMA auth; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT USAGE ON SCHEMA auth TO postgres;


--
-- Name: SCHEMA extensions; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;


--
-- Name: SCHEMA realtime; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA realtime TO postgres WITH GRANT OPTION;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;


--
-- Name: SCHEMA storage; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA storage TO postgres WITH GRANT OPTION;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON SCHEMA storage TO dashboard_user;


--
-- Name: SCHEMA vault; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA vault TO postgres WITH GRANT OPTION;
GRANT USAGE ON SCHEMA vault TO service_role;


--
-- Name: FUNCTION email(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.email() TO dashboard_user;


--
-- Name: FUNCTION jwt(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;


--
-- Name: FUNCTION role(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.role() TO dashboard_user;


--
-- Name: FUNCTION uid(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;


--
-- Name: FUNCTION armor(bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;


--
-- Name: FUNCTION armor(bytea, text[], text[]); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;


--
-- Name: FUNCTION crypt(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;


--
-- Name: FUNCTION dearmor(text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;


--
-- Name: FUNCTION decrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION decrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION digest(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION digest(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;


--
-- Name: FUNCTION encrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION encrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION gen_random_bytes(integer); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;


--
-- Name: FUNCTION gen_random_uuid(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;


--
-- Name: FUNCTION gen_salt(text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;


--
-- Name: FUNCTION gen_salt(text, integer); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;


--
-- Name: FUNCTION grant_pg_cron_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM supabase_admin;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO supabase_admin WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;


--
-- Name: FUNCTION grant_pg_graphql_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION grant_pg_net_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM supabase_admin;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO supabase_admin WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;


--
-- Name: FUNCTION hmac(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION hmac(text, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) TO dashboard_user;


--
-- Name: FUNCTION pgp_armor_headers(text, OUT key text, OUT value text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;


--
-- Name: FUNCTION pgp_key_id(bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgrst_ddl_watch(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION pgrst_drop_watch(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION set_graphql_placeholder(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION uuid_generate_v1(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v1mc(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v3(namespace uuid, name text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v4(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v5(namespace uuid, name text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;


--
-- Name: FUNCTION uuid_nil(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_dns(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_oid(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_url(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_x500(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;


--
-- Name: FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb); Type: ACL; Schema: graphql_public; Owner: supabase_admin
--

GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;


--
-- Name: FUNCTION pg_reload_conf(); Type: ACL; Schema: pg_catalog; Owner: supabase_admin
--

GRANT ALL ON FUNCTION pg_catalog.pg_reload_conf() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION get_auth(p_usename text); Type: ACL; Schema: pgbouncer; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;


--
-- Name: FUNCTION abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text) TO anon;
GRANT ALL ON FUNCTION public.abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text) TO authenticated;
GRANT ALL ON FUNCTION public.abrir_jornada(p_precio_seco numeric, p_precio_baba numeric, p_nota text) TO service_role;


--
-- Name: FUNCTION ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text, p_desembolso_id uuid, p_nuevo_vencimiento date); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text, p_desembolso_id uuid, p_nuevo_vencimiento date) TO anon;
GRANT ALL ON FUNCTION public.ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text, p_desembolso_id uuid, p_nuevo_vencimiento date) TO authenticated;
GRANT ALL ON FUNCTION public.ampliar_prestamo(p_prestamo_id uuid, p_monto numeric, p_nota text, p_desembolso_id uuid, p_nuevo_vencimiento date) TO service_role;


--
-- Name: FUNCTION anular_compra(p_compra_id uuid, p_motivo text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.anular_compra(p_compra_id uuid, p_motivo text) TO anon;
GRANT ALL ON FUNCTION public.anular_compra(p_compra_id uuid, p_motivo text) TO authenticated;
GRANT ALL ON FUNCTION public.anular_compra(p_compra_id uuid, p_motivo text) TO service_role;


--
-- Name: FUNCTION anular_prestamo(p_prestamo_id uuid, p_motivo text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.anular_prestamo(p_prestamo_id uuid, p_motivo text) TO anon;
GRANT ALL ON FUNCTION public.anular_prestamo(p_prestamo_id uuid, p_motivo text) TO authenticated;
GRANT ALL ON FUNCTION public.anular_prestamo(p_prestamo_id uuid, p_motivo text) TO service_role;


--
-- Name: FUNCTION aplicar_cobro_importadora(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.aplicar_cobro_importadora() TO anon;
GRANT ALL ON FUNCTION public.aplicar_cobro_importadora() TO authenticated;
GRANT ALL ON FUNCTION public.aplicar_cobro_importadora() TO service_role;


--
-- Name: FUNCTION aplicar_interes_desembolso(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.aplicar_interes_desembolso() TO anon;
GRANT ALL ON FUNCTION public.aplicar_interes_desembolso() TO authenticated;
GRANT ALL ON FUNCTION public.aplicar_interes_desembolso() TO service_role;


--
-- Name: FUNCTION calcular_cuadre_jornada(p_jornada_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.calcular_cuadre_jornada(p_jornada_id uuid) TO anon;
GRANT ALL ON FUNCTION public.calcular_cuadre_jornada(p_jornada_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.calcular_cuadre_jornada(p_jornada_id uuid) TO service_role;


--
-- Name: FUNCTION calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date) TO anon;
GRANT ALL ON FUNCTION public.calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date) TO authenticated;
GRANT ALL ON FUNCTION public.calcular_interes_prestamo(p_prestamo_id uuid, p_fecha date) TO service_role;


--
-- Name: FUNCTION calcular_limite_credito(p_proveedor_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.calcular_limite_credito(p_proveedor_id uuid) TO anon;
GRANT ALL ON FUNCTION public.calcular_limite_credito(p_proveedor_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.calcular_limite_credito(p_proveedor_id uuid) TO service_role;


--
-- Name: FUNCTION cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric) TO anon;
GRANT ALL ON FUNCTION public.cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric) TO authenticated;
GRANT ALL ON FUNCTION public.cambiar_precio_jornada(p_precio_seco numeric, p_precio_baba numeric) TO service_role;


--
-- Name: FUNCTION cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text) TO anon;
GRANT ALL ON FUNCTION public.cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text) TO authenticated;
GRANT ALL ON FUNCTION public.cambiar_tasa_prestamo(p_prestamo_id uuid, p_tasa numeric, p_tipo text, p_motivo text) TO service_role;


--
-- Name: FUNCTION cerrar_jornada(p_jornada_id uuid, p_nota text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cerrar_jornada(p_jornada_id uuid, p_nota text) TO anon;
GRANT ALL ON FUNCTION public.cerrar_jornada(p_jornada_id uuid, p_nota text) TO authenticated;
GRANT ALL ON FUNCTION public.cerrar_jornada(p_jornada_id uuid, p_nota text) TO service_role;


--
-- Name: FUNCTION condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid) TO anon;
GRANT ALL ON FUNCTION public.condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid) TO authenticated;
GRANT ALL ON FUNCTION public.condonar_mora(p_prestamo_id uuid, p_monto numeric, p_motivo text, p_autorizado_por uuid) TO service_role;


--
-- Name: FUNCTION crear_desembolso_inicial(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crear_desembolso_inicial() TO anon;
GRANT ALL ON FUNCTION public.crear_desembolso_inicial() TO authenticated;
GRANT ALL ON FUNCTION public.crear_desembolso_inicial() TO service_role;


--
-- Name: FUNCTION decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO anon;
GRANT ALL ON FUNCTION public.decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO authenticated;
GRANT ALL ON FUNCTION public.decrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO service_role;


--
-- Name: FUNCTION devengar_mora(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.devengar_mora() TO anon;
GRANT ALL ON FUNCTION public.devengar_mora() TO authenticated;
GRANT ALL ON FUNCTION public.devengar_mora() TO service_role;


--
-- Name: FUNCTION enforce_ocasional_sin_deuda(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.enforce_ocasional_sin_deuda() TO anon;
GRANT ALL ON FUNCTION public.enforce_ocasional_sin_deuda() TO authenticated;
GRANT ALL ON FUNCTION public.enforce_ocasional_sin_deuda() TO service_role;


--
-- Name: FUNCTION enforce_prestamo_solo_registrado(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.enforce_prestamo_solo_registrado() TO anon;
GRANT ALL ON FUNCTION public.enforce_prestamo_solo_registrado() TO authenticated;
GRANT ALL ON FUNCTION public.enforce_prestamo_solo_registrado() TO service_role;


--
-- Name: FUNCTION es_admin(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.es_admin() TO anon;
GRANT ALL ON FUNCTION public.es_admin() TO authenticated;
GRANT ALL ON FUNCTION public.es_admin() TO service_role;


--
-- Name: FUNCTION hoy_rd(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hoy_rd() TO anon;
GRANT ALL ON FUNCTION public.hoy_rd() TO authenticated;
GRANT ALL ON FUNCTION public.hoy_rd() TO service_role;


--
-- Name: FUNCTION incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO anon;
GRANT ALL ON FUNCTION public.incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO authenticated;
GRANT ALL ON FUNCTION public.incrementar_saldo_proveedor(p_proveedor_id uuid, p_monto numeric) TO service_role;


--
-- Name: FUNCTION init_venta_importadora(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.init_venta_importadora() TO anon;
GRANT ALL ON FUNCTION public.init_venta_importadora() TO authenticated;
GRANT ALL ON FUNCTION public.init_venta_importadora() TO service_role;


--
-- Name: FUNCTION jornada_abierta(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.jornada_abierta() TO anon;
GRANT ALL ON FUNCTION public.jornada_abierta() TO authenticated;
GRANT ALL ON FUNCTION public.jornada_abierta() TO service_role;


--
-- Name: FUNCTION mis_permisos(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.mis_permisos() TO anon;
GRANT ALL ON FUNCTION public.mis_permisos() TO authenticated;
GRANT ALL ON FUNCTION public.mis_permisos() TO service_role;


--
-- Name: FUNCTION otorgar_permiso(p_usuario_id uuid, p_permiso text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.otorgar_permiso(p_usuario_id uuid, p_permiso text) TO anon;
GRANT ALL ON FUNCTION public.otorgar_permiso(p_usuario_id uuid, p_permiso text) TO authenticated;
GRANT ALL ON FUNCTION public.otorgar_permiso(p_usuario_id uuid, p_permiso text) TO service_role;


--
-- Name: FUNCTION recalcular_categoria_scoring(p_proveedor_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.recalcular_categoria_scoring(p_proveedor_id uuid) TO anon;
GRANT ALL ON FUNCTION public.recalcular_categoria_scoring(p_proveedor_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.recalcular_categoria_scoring(p_proveedor_id uuid) TO service_role;


--
-- Name: FUNCTION recalcular_cuadre_jornada(p_jornada_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.recalcular_cuadre_jornada(p_jornada_id uuid) TO anon;
GRANT ALL ON FUNCTION public.recalcular_cuadre_jornada(p_jornada_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.recalcular_cuadre_jornada(p_jornada_id uuid) TO service_role;


--
-- Name: FUNCTION recalcular_scoring(p_proveedor_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.recalcular_scoring(p_proveedor_id uuid) TO anon;
GRANT ALL ON FUNCTION public.recalcular_scoring(p_proveedor_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.recalcular_scoring(p_proveedor_id uuid) TO service_role;


--
-- Name: FUNCTION registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid, p_jornada_id uuid, p_nota text, p_fecha timestamp with time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid, p_jornada_id uuid, p_nota text, p_fecha timestamp with time zone) TO anon;
GRANT ALL ON FUNCTION public.registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid, p_jornada_id uuid, p_nota text, p_fecha timestamp with time zone) TO authenticated;
GRANT ALL ON FUNCTION public.registrar_abono(p_compra_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_abono_id uuid, p_jornada_id uuid, p_nota text, p_fecha timestamp with time zone) TO service_role;


--
-- Name: FUNCTION registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid, p_abono_id uuid, p_fecha timestamp with time zone, p_jornada_id uuid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid, p_abono_id uuid, p_fecha timestamp with time zone, p_jornada_id uuid) TO anon;
GRANT ALL ON FUNCTION public.registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid, p_abono_id uuid, p_fecha timestamp with time zone, p_jornada_id uuid) TO authenticated;
GRANT ALL ON FUNCTION public.registrar_compensacion_compra(p_compra_id uuid, p_prestamo_id uuid, p_monto numeric, p_registrado_por uuid, p_pago_id uuid, p_abono_id uuid, p_fecha timestamp with time zone, p_jornada_id uuid) TO service_role;


--
-- Name: FUNCTION registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_nota text, p_referencia text, p_fecha timestamp with time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_nota text, p_referencia text, p_fecha timestamp with time zone) TO anon;
GRANT ALL ON FUNCTION public.registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_nota text, p_referencia text, p_fecha timestamp with time zone) TO authenticated;
GRANT ALL ON FUNCTION public.registrar_pago_prestamo(p_prestamo_id uuid, p_monto numeric, p_metodo text, p_registrado_por uuid, p_nota text, p_referencia text, p_fecha timestamp with time zone) TO service_role;


--
-- Name: FUNCTION resolver_jornada_abono(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.resolver_jornada_abono() TO anon;
GRANT ALL ON FUNCTION public.resolver_jornada_abono() TO authenticated;
GRANT ALL ON FUNCTION public.resolver_jornada_abono() TO service_role;


--
-- Name: FUNCTION resolver_jornada_compra(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.resolver_jornada_compra() TO anon;
GRANT ALL ON FUNCTION public.resolver_jornada_compra() TO authenticated;
GRANT ALL ON FUNCTION public.resolver_jornada_compra() TO service_role;


--
-- Name: FUNCTION revocar_permiso(p_usuario_id uuid, p_permiso text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.revocar_permiso(p_usuario_id uuid, p_permiso text) TO anon;
GRANT ALL ON FUNCTION public.revocar_permiso(p_usuario_id uuid, p_permiso text) TO authenticated;
GRANT ALL ON FUNCTION public.revocar_permiso(p_usuario_id uuid, p_permiso text) TO service_role;


--
-- Name: FUNCTION rls_auto_enable(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.rls_auto_enable() TO anon;
GRANT ALL ON FUNCTION public.rls_auto_enable() TO authenticated;
GRANT ALL ON FUNCTION public.rls_auto_enable() TO service_role;


--
-- Name: FUNCTION sellar_registrado_por(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sellar_registrado_por() TO anon;
GRANT ALL ON FUNCTION public.sellar_registrado_por() TO authenticated;
GRANT ALL ON FUNCTION public.sellar_registrado_por() TO service_role;


--
-- Name: FUNCTION tiene_permiso(p_permiso text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.tiene_permiso(p_permiso text) TO anon;
GRANT ALL ON FUNCTION public.tiene_permiso(p_permiso text) TO authenticated;
GRANT ALL ON FUNCTION public.tiene_permiso(p_permiso text) TO service_role;


--
-- Name: FUNCTION usuario_actual(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.usuario_actual() TO anon;
GRANT ALL ON FUNCTION public.usuario_actual() TO authenticated;
GRANT ALL ON FUNCTION public.usuario_actual() TO service_role;


--
-- Name: FUNCTION apply_rls(wal jsonb, max_record_bytes integer); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;


--
-- Name: FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;


--
-- Name: FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;


--
-- Name: FUNCTION "cast"(val text, type_ regtype); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;


--
-- Name: FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;


--
-- Name: FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text, negate boolean) TO service_role;


--
-- Name: FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;


--
-- Name: FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;


--
-- Name: FUNCTION quote_wal2json(entity regclass); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;


--
-- Name: FUNCTION send(payload jsonb, event text, topic text, private boolean); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;


--
-- Name: FUNCTION send_binary(payload bytea, event text, topic text, private boolean); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) TO dashboard_user;


--
-- Name: FUNCTION subscription_check_filters(); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;


--
-- Name: FUNCTION to_regrole(role_name text); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;


--
-- Name: FUNCTION topic(); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;


--
-- Name: FUNCTION wal2json_escape_identifier(name text); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.wal2json_escape_identifier(name text) TO postgres;
GRANT ALL ON FUNCTION realtime.wal2json_escape_identifier(name text) TO dashboard_user;


--
-- Name: FUNCTION _crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO service_role;


--
-- Name: FUNCTION create_secret(new_secret text, new_name text, new_description text, new_key_id uuid); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO service_role;


--
-- Name: FUNCTION update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO service_role;


--
-- Name: TABLE audit_log_entries; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;


--
-- Name: TABLE custom_oauth_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.custom_oauth_providers TO postgres;
GRANT ALL ON TABLE auth.custom_oauth_providers TO dashboard_user;


--
-- Name: TABLE flow_state; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.flow_state TO dashboard_user;


--
-- Name: TABLE identities; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.identities TO dashboard_user;


--
-- Name: TABLE instances; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;


--
-- Name: TABLE mfa_amr_claims; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_amr_claims TO dashboard_user;


--
-- Name: TABLE mfa_challenges; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_challenges TO dashboard_user;


--
-- Name: TABLE mfa_factors; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_factors TO dashboard_user;


--
-- Name: TABLE oauth_authorizations; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_authorizations TO postgres;
GRANT ALL ON TABLE auth.oauth_authorizations TO dashboard_user;


--
-- Name: TABLE oauth_client_states; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_client_states TO postgres;
GRANT ALL ON TABLE auth.oauth_client_states TO dashboard_user;


--
-- Name: TABLE oauth_clients; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_clients TO postgres;
GRANT ALL ON TABLE auth.oauth_clients TO dashboard_user;


--
-- Name: TABLE oauth_consents; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_consents TO postgres;
GRANT ALL ON TABLE auth.oauth_consents TO dashboard_user;


--
-- Name: TABLE one_time_tokens; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.one_time_tokens TO dashboard_user;


--
-- Name: TABLE refresh_tokens; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;


--
-- Name: SEQUENCE refresh_tokens_id_seq; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;


--
-- Name: TABLE saml_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_providers TO dashboard_user;


--
-- Name: TABLE saml_relay_states; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_relay_states TO dashboard_user;


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;


--
-- Name: TABLE sessions; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sessions TO dashboard_user;


--
-- Name: TABLE sso_domains; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_domains TO dashboard_user;


--
-- Name: TABLE sso_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_providers TO dashboard_user;


--
-- Name: TABLE users; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;


--
-- Name: TABLE webauthn_challenges; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.webauthn_challenges TO postgres;
GRANT ALL ON TABLE auth.webauthn_challenges TO dashboard_user;


--
-- Name: TABLE webauthn_credentials; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.webauthn_credentials TO postgres;
GRANT ALL ON TABLE auth.webauthn_credentials TO dashboard_user;


--
-- Name: TABLE pg_stat_statements; Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements TO dashboard_user;


--
-- Name: TABLE pg_stat_statements_info; Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO dashboard_user;


--
-- Name: TABLE abono_proveedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.abono_proveedor TO anon;
GRANT ALL ON TABLE public.abono_proveedor TO authenticated;
GRANT ALL ON TABLE public.abono_proveedor TO service_role;


--
-- Name: TABLE cambio_tasa_prestamo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cambio_tasa_prestamo TO anon;
GRANT ALL ON TABLE public.cambio_tasa_prestamo TO authenticated;
GRANT ALL ON TABLE public.cambio_tasa_prestamo TO service_role;


--
-- Name: TABLE cobro_importadora; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cobro_importadora TO anon;
GRANT ALL ON TABLE public.cobro_importadora TO authenticated;
GRANT ALL ON TABLE public.cobro_importadora TO service_role;


--
-- Name: TABLE compra; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.compra TO anon;
GRANT ALL ON TABLE public.compra TO authenticated;
GRANT ALL ON TABLE public.compra TO service_role;


--
-- Name: TABLE condonacion_mora; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.condonacion_mora TO anon;
GRANT ALL ON TABLE public.condonacion_mora TO authenticated;
GRANT ALL ON TABLE public.condonacion_mora TO service_role;


--
-- Name: TABLE config_sistema; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.config_sistema TO anon;
GRANT ALL ON TABLE public.config_sistema TO authenticated;
GRANT ALL ON TABLE public.config_sistema TO service_role;


--
-- Name: TABLE contenedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.contenedor TO anon;
GRANT ALL ON TABLE public.contenedor TO authenticated;
GRANT ALL ON TABLE public.contenedor TO service_role;


--
-- Name: TABLE contenedor_equivalencia; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.contenedor_equivalencia TO anon;
GRANT ALL ON TABLE public.contenedor_equivalencia TO authenticated;
GRANT ALL ON TABLE public.contenedor_equivalencia TO service_role;


--
-- Name: TABLE cuota_prestamo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cuota_prestamo TO anon;
GRANT ALL ON TABLE public.cuota_prestamo TO authenticated;
GRANT ALL ON TABLE public.cuota_prestamo TO service_role;


--
-- Name: TABLE desembolso_prestamo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.desembolso_prestamo TO anon;
GRANT ALL ON TABLE public.desembolso_prestamo TO authenticated;
GRANT ALL ON TABLE public.desembolso_prestamo TO service_role;


--
-- Name: TABLE finca_proveedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.finca_proveedor TO anon;
GRANT ALL ON TABLE public.finca_proveedor TO authenticated;
GRANT ALL ON TABLE public.finca_proveedor TO service_role;


--
-- Name: TABLE fondo_diario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fondo_diario TO anon;
GRANT ALL ON TABLE public.fondo_diario TO authenticated;
GRANT ALL ON TABLE public.fondo_diario TO service_role;


--
-- Name: TABLE gasto_operativo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.gasto_operativo TO anon;
GRANT ALL ON TABLE public.gasto_operativo TO authenticated;
GRANT ALL ON TABLE public.gasto_operativo TO service_role;


--
-- Name: TABLE importadora; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.importadora TO anon;
GRANT ALL ON TABLE public.importadora TO authenticated;
GRANT ALL ON TABLE public.importadora TO service_role;


--
-- Name: TABLE proceso_secado; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.proceso_secado TO anon;
GRANT ALL ON TABLE public.proceso_secado TO authenticated;
GRANT ALL ON TABLE public.proceso_secado TO service_role;


--
-- Name: TABLE venta_importadora; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.venta_importadora TO anon;
GRANT ALL ON TABLE public.venta_importadora TO authenticated;
GRANT ALL ON TABLE public.venta_importadora TO service_role;


--
-- Name: TABLE inventario_disponible; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.inventario_disponible TO anon;
GRANT ALL ON TABLE public.inventario_disponible TO authenticated;
GRANT ALL ON TABLE public.inventario_disponible TO service_role;


--
-- Name: TABLE jornada; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.jornada TO anon;
GRANT ALL ON TABLE public.jornada TO authenticated;
GRANT ALL ON TABLE public.jornada TO service_role;


--
-- Name: SEQUENCE jornada_numero_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.jornada_numero_seq TO anon;
GRANT ALL ON SEQUENCE public.jornada_numero_seq TO authenticated;
GRANT ALL ON SEQUENCE public.jornada_numero_seq TO service_role;


--
-- Name: TABLE pago_prestamo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pago_prestamo TO anon;
GRANT ALL ON TABLE public.pago_prestamo TO authenticated;
GRANT ALL ON TABLE public.pago_prestamo TO service_role;


--
-- Name: TABLE permiso_usuario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.permiso_usuario TO anon;
GRANT ALL ON TABLE public.permiso_usuario TO authenticated;
GRANT ALL ON TABLE public.permiso_usuario TO service_role;


--
-- Name: TABLE precio_diario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.precio_diario TO anon;
GRANT ALL ON TABLE public.precio_diario TO authenticated;
GRANT ALL ON TABLE public.precio_diario TO service_role;


--
-- Name: TABLE prestamo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.prestamo TO anon;
GRANT ALL ON TABLE public.prestamo TO authenticated;
GRANT ALL ON TABLE public.prestamo TO service_role;


--
-- Name: TABLE proveedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.proveedor TO anon;
GRANT ALL ON TABLE public.proveedor TO authenticated;
GRANT ALL ON TABLE public.proveedor TO service_role;


--
-- Name: TABLE scoring_proveedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.scoring_proveedor TO anon;
GRANT ALL ON TABLE public.scoring_proveedor TO authenticated;
GRANT ALL ON TABLE public.scoring_proveedor TO service_role;


--
-- Name: TABLE secado_compras; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.secado_compras TO anon;
GRANT ALL ON TABLE public.secado_compras TO authenticated;
GRANT ALL ON TABLE public.secado_compras TO service_role;


--
-- Name: TABLE unidad_conversion; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.unidad_conversion TO anon;
GRANT ALL ON TABLE public.unidad_conversion TO authenticated;
GRANT ALL ON TABLE public.unidad_conversion TO service_role;


--
-- Name: TABLE usuario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.usuario TO anon;
GRANT ALL ON TABLE public.usuario TO authenticated;
GRANT ALL ON TABLE public.usuario TO service_role;


--
-- Name: TABLE vendedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.vendedor TO anon;
GRANT ALL ON TABLE public.vendedor TO authenticated;
GRANT ALL ON TABLE public.vendedor TO service_role;


--
-- Name: TABLE messages; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages TO postgres;
GRANT ALL ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;


--
-- Name: TABLE messages_2026_08_26; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_26 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_26 TO dashboard_user;


--
-- Name: TABLE messages_2026_08_27; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_27 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_27 TO dashboard_user;


--
-- Name: TABLE messages_2026_08_28; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_28 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_28 TO dashboard_user;


--
-- Name: TABLE messages_2026_08_29; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_29 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_29 TO dashboard_user;


--
-- Name: TABLE messages_2026_08_30; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_30 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_30 TO dashboard_user;


--
-- Name: TABLE messages_2026_08_31; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_08_31 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_08_31 TO dashboard_user;


--
-- Name: TABLE messages_2026_09_01; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages_2026_09_01 TO postgres;
GRANT ALL ON TABLE realtime.messages_2026_09_01 TO dashboard_user;


--
-- Name: TABLE subscription; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.subscription TO postgres;
GRANT ALL ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;


--
-- Name: SEQUENCE subscription_id_seq; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;


--
-- Name: TABLE buckets; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

REVOKE ALL ON TABLE storage.buckets FROM supabase_storage_admin;
GRANT ALL ON TABLE storage.buckets TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON TABLE storage.buckets TO service_role;
GRANT ALL ON TABLE storage.buckets TO authenticated;
GRANT ALL ON TABLE storage.buckets TO anon;
GRANT ALL ON TABLE storage.buckets TO postgres WITH GRANT OPTION;


--
-- Name: TABLE buckets_analytics; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.buckets_analytics TO service_role;
GRANT ALL ON TABLE storage.buckets_analytics TO authenticated;
GRANT ALL ON TABLE storage.buckets_analytics TO anon;


--
-- Name: TABLE buckets_vectors; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT SELECT ON TABLE storage.buckets_vectors TO service_role;
GRANT SELECT ON TABLE storage.buckets_vectors TO authenticated;
GRANT SELECT ON TABLE storage.buckets_vectors TO anon;


--
-- Name: TABLE objects; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

REVOKE ALL ON TABLE storage.objects FROM supabase_storage_admin;
GRANT ALL ON TABLE storage.objects TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON TABLE storage.objects TO service_role;
GRANT ALL ON TABLE storage.objects TO authenticated;
GRANT ALL ON TABLE storage.objects TO anon;
GRANT ALL ON TABLE storage.objects TO postgres WITH GRANT OPTION;


--
-- Name: TABLE s3_multipart_uploads; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;


--
-- Name: TABLE s3_multipart_uploads_parts; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;


--
-- Name: TABLE vector_indexes; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT SELECT ON TABLE storage.vector_indexes TO service_role;
GRANT SELECT ON TABLE storage.vector_indexes TO authenticated;
GRANT SELECT ON TABLE storage.vector_indexes TO anon;


--
-- Name: TABLE secrets; Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT SELECT,REFERENCES,DELETE,TRUNCATE ON TABLE vault.secrets TO postgres WITH GRANT OPTION;
GRANT SELECT,DELETE ON TABLE vault.secrets TO service_role;


--
-- Name: TABLE decrypted_secrets; Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT SELECT,REFERENCES,DELETE,TRUNCATE ON TABLE vault.decrypted_secrets TO postgres WITH GRANT OPTION;
GRANT SELECT,DELETE ON TABLE vault.decrypted_secrets TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON TABLES TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO service_role;


--
-- Name: ensure_rls; Type: EVENT TRIGGER; Schema: -; Owner: postgres
--

CREATE EVENT TRIGGER ensure_rls ON ddl_command_end
         WHEN TAG IN ('CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO')
   EXECUTE FUNCTION public.rls_auto_enable();


ALTER EVENT TRIGGER ensure_rls OWNER TO postgres;

--
-- Name: issue_graphql_placeholder; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();


ALTER EVENT TRIGGER issue_graphql_placeholder OWNER TO supabase_admin;

--
-- Name: issue_pg_cron_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();


ALTER EVENT TRIGGER issue_pg_cron_access OWNER TO supabase_admin;

--
-- Name: issue_pg_graphql_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();


ALTER EVENT TRIGGER issue_pg_graphql_access OWNER TO supabase_admin;

--
-- Name: issue_pg_net_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();


ALTER EVENT TRIGGER issue_pg_net_access OWNER TO supabase_admin;

--
-- Name: pgrst_ddl_watch; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();


ALTER EVENT TRIGGER pgrst_ddl_watch OWNER TO supabase_admin;

--
-- Name: pgrst_drop_watch; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();


ALTER EVENT TRIGGER pgrst_drop_watch OWNER TO supabase_admin;

--
-- PostgreSQL database dump complete
--

\unrestrict 10Jd3ACt6QgLh63CyIfk1XUQ6xvxFFz6sj2St6xMyRFNrpbxmClXaDRhAdmOhEz

