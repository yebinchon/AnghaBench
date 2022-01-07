
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTrace; scalar_t__ iTimeout; scalar_t__ bIgnoreSqlErrors; } ;


 int SQLITE_BUSY ;
 int SQLITE_ERROR ;
 int SQLITE_NOTICE ;
 int SQLITE_SCHEMA ;
 int UNUSED_PARAMETER (void*) ;
 int errorMessage (char*,int,char const*) ;
 TYPE_1__ g ;
 int logMessage (char*,char const*) ;

__attribute__((used)) static void sqlErrorCallback(void *pArg, int iErrCode, const char *zMsg){
  UNUSED_PARAMETER(pArg);
  if( iErrCode==SQLITE_ERROR && g.bIgnoreSqlErrors ) return;
  if( (iErrCode&0xff)==SQLITE_SCHEMA && g.iTrace<3 ) return;
  if( g.iTimeout==0 && (iErrCode&0xff)==SQLITE_BUSY && g.iTrace<3 ) return;
  if( (iErrCode&0xff)==SQLITE_NOTICE ){
    logMessage("(info) %s", zMsg);
  }else{
    errorMessage("(errcode=%d) %s", iErrCode, zMsg);
  }
}
