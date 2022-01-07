
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ pData; TYPE_1__* pPager; } ;
struct TYPE_4__ {scalar_t__ dbFileVers; } ;
typedef TYPE_2__ PgHdr ;


 scalar_t__ SQLITE_VERSION_NUMBER ;
 int put32bits (char*,scalar_t__) ;
 scalar_t__ sqlite3Get4byte (int *) ;

__attribute__((used)) static void pager_write_changecounter(PgHdr *pPg){
  u32 change_counter;


  change_counter = sqlite3Get4byte((u8*)pPg->pPager->dbFileVers)+1;
  put32bits(((char*)pPg->pData)+24, change_counter);




  put32bits(((char*)pPg->pData)+92, change_counter);
  put32bits(((char*)pPg->pData)+96, SQLITE_VERSION_NUMBER);
}
