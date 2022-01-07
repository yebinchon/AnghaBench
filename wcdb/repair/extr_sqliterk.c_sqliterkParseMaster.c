
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk ;


 int sqliterkParsePage (int *,int) ;

int sqliterkParseMaster(sqliterk *rk)
{


    return sqliterkParsePage(rk, 1);
}
