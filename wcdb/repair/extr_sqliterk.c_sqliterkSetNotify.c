
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_notify ;
struct TYPE_3__ {int notify; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;

int sqliterkSetNotify(sqliterk *rk, sqliterk_notify notify)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    rk->notify = notify;
    return SQLITERK_OK;
}
