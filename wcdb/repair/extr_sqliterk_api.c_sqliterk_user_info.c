
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk ;


 void* sqliterkGetUserInfo (int *) ;

void *sqliterk_user_info(sqliterk *rk)
{
    return sqliterkGetUserInfo(rk);
}
