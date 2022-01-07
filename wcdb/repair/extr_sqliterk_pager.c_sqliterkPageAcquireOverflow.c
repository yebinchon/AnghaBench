
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_pager ;
typedef int sqliterk_page ;


 int sqliterkPageAcquireOne (int *,int,int **,int ) ;
 int sqliterk_page_type_overflow ;

int sqliterkPageAcquireOverflow(sqliterk_pager *pager,
                                int pageno,
                                sqliterk_page **page)
{
    return sqliterkPageAcquireOne(pager, pageno, page,
                                  sqliterk_page_type_overflow);
}
