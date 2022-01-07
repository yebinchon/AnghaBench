
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_notify ;
typedef int sqliterk ;


 int sqliterkSetNotify (int *,int ) ;

int sqliterk_register_notify(sqliterk *rk, sqliterk_notify notify)
{
    return sqliterkSetNotify(rk, notify);
}
