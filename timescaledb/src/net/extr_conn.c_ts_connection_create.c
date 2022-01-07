
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ (* init ) (TYPE_2__*) ;} ;
typedef size_t ConnectionType ;
typedef TYPE_2__ Connection ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 size_t _CONNECTION_MAX ;
 int * conn_names ;
 int ** conn_ops ;
 TYPE_2__* connection_internal_create (size_t,int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ stub1 (TYPE_2__*) ;

Connection *
ts_connection_create(ConnectionType type)
{
 Connection *conn;

 if (type == _CONNECTION_MAX)
  elog(ERROR, "invalid connection type");

 if (((void*)0) == conn_ops[type])
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("%s connections are not supported", conn_names[type]),
     errhint("Enable %s support when compiling the extension.", conn_names[type])));

 conn = connection_internal_create(type, conn_ops[type]);

 Assert(((void*)0) != conn);

 if (((void*)0) != conn->ops->init)
  if (conn->ops->init(conn) < 0)
   ereport(ERROR,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("%s connection could not be initialized", conn_names[type])));

 return conn;
}
