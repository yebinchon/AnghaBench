
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* userInfo; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;

int sqliterkSetUserInfo(sqliterk *rk, void *userInfo)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    rk->userInfo = userInfo;
    return SQLITERK_OK;
}
