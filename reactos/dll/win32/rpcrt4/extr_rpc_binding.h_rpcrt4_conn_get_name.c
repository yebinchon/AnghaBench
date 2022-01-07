
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {char const* name; } ;
typedef TYPE_2__ RpcConnection ;



__attribute__((used)) static inline const char *rpcrt4_conn_get_name(const RpcConnection *Connection)
{
  return Connection->ops->name;
}
