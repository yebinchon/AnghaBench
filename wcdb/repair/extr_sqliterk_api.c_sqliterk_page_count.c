
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk ;


 int sqliterkGetPageCount (int *) ;

int sqliterk_page_count(sqliterk *rk)
{
    return sqliterkGetPageCount(rk);
}
