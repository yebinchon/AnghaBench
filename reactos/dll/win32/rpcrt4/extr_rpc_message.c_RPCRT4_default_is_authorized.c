
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; scalar_t__ AuthInfo; } ;
typedef TYPE_1__ RpcConnection ;
typedef int BOOL ;


 scalar_t__ SecIsValidHandle (int *) ;

BOOL RPCRT4_default_is_authorized(RpcConnection *Connection)
{
    return Connection->AuthInfo && SecIsValidHandle(&Connection->ctx);
}
