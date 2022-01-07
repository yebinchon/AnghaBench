
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Connection ;


 int CONNECTION_PLAIN ;
 int CONNECTION_SSL ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INTERNAL_ERROR ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char const*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int ts_connection_connect (int *,char const*,char const*,int ) ;
 int * ts_connection_create (int ) ;
 int ts_connection_destroy (int *) ;
 char* ts_connection_get_and_clear_error (int *) ;

Connection *
ts_telemetry_connect(const char *host, const char *service)
{
 Connection *conn = ((void*)0);
 int ret;

 if (strcmp("http", service) == 0)
  conn = ts_connection_create(CONNECTION_PLAIN);
 else if (strcmp("https", service) == 0)
  conn = ts_connection_create(CONNECTION_SSL);
 else
  ereport(WARNING,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("scheme \"%s\" not supported for telemetry", service)));

 if (conn == ((void*)0))
  return ((void*)0);

 ret = ts_connection_connect(conn, host, service, 0);

 if (ret < 0)
 {
  const char *errstr = ts_connection_get_and_clear_error(conn);

  ts_connection_destroy(conn);
  conn = ((void*)0);

  ereport(WARNING,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("telemetry could not connect to \"%s\"", host),
     errdetail("%s", errstr)));
 }

 return conn;
}
