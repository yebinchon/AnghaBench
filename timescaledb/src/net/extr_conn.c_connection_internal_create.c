
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int size; } ;
struct TYPE_7__ {int type; TYPE_2__* ops; } ;
typedef int ConnectionType ;
typedef TYPE_1__ Connection ;
typedef TYPE_2__ ConnOps ;


 int memset (TYPE_1__*,int ,int ) ;
 TYPE_1__* palloc (int ) ;

__attribute__((used)) static Connection *
connection_internal_create(ConnectionType type, ConnOps *ops)
{
 Connection *conn = palloc(ops->size);

 if (((void*)0) == conn)
  return ((void*)0);

 memset(conn, 0, ops->size);
 conn->ops = ops;
 conn->type = type;

 return conn;
}
