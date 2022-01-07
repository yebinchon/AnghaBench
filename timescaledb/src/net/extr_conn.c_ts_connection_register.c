
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ConnectionType ;
typedef int ConnOps ;


 size_t _CONNECTION_MAX ;
 int ** conn_ops ;

int
ts_connection_register(ConnectionType type, ConnOps *ops)
{
 if (type == _CONNECTION_MAX)
  return -1;

 conn_ops[type] = ops;

 return 0;
}
