
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* pExtra; } ;
typedef TYPE_1__ DbPage ;



void *sqlite3PagerGetExtra(DbPage *pPg){
  return pPg->pExtra;
}
