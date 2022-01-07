
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int LsmPgno ;


 int INFO_PAGE_DUMP_DATA ;
 int INFO_PAGE_DUMP_HEX ;
 int INFO_PAGE_DUMP_VALUES ;
 int infoPageDump (int *,int ,int,char**) ;

int lsmInfoPageDump(
  lsm_db *pDb,
  LsmPgno iPg,
  int bHex,
  char **pzOut
){
  int flags = INFO_PAGE_DUMP_DATA | INFO_PAGE_DUMP_VALUES;
  if( bHex ) flags |= INFO_PAGE_DUMP_HEX;
  return infoPageDump(pDb, iPg, flags, pzOut);
}
