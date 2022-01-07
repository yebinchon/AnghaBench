
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3_status64 (int,scalar_t__*,scalar_t__*,int) ;

int sqlite3_status(int op, int *pCurrent, int *pHighwater, int resetFlag){
  sqlite3_int64 iCur = 0, iHwtr = 0;
  int rc;



  rc = sqlite3_status64(op, &iCur, &iHwtr, resetFlag);
  if( rc==0 ){
    *pCurrent = (int)iCur;
    *pHighwater = (int)iHwtr;
  }
  return rc;
}
