
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk ;


 int sqliterkGetParsedPageCount (int *) ;

int sqliterk_parsed_page_count(sqliterk *rk)
{
    return sqliterkGetParsedPageCount(rk);
}
