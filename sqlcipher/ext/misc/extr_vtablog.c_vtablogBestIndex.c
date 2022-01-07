
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
typedef int sqlite3_vtab ;
struct TYPE_5__ {double estimatedCost; int estimatedRows; } ;
typedef TYPE_2__ sqlite3_index_info ;


 int SQLITE_OK ;
 int printf (char*,int) ;

__attribute__((used)) static int vtablogBestIndex(
  sqlite3_vtab *tab,
  sqlite3_index_info *pIdxInfo
){
  vtablog_vtab *pTab = (vtablog_vtab*)tab;
  printf("vtablogBestIndex(tab=%d):\n", pTab->iInst);
  pIdxInfo->estimatedCost = (double)500;
  pIdxInfo->estimatedRows = 500;
  return SQLITE_OK;
}
