
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nFanout; } ;
typedef TYPE_1__ DbParameters ;


 int DB_KEY_BYTES ;
 int snprintf (char*,int ,char*,int,...) ;

__attribute__((used)) static void dbFormatKey(
  DbParameters *pParam,
  int iLevel,
  int iKey,
  char *aBuf
){
  if( iLevel==0 ){
    snprintf(aBuf, DB_KEY_BYTES, "k.%.10d", iKey);
  }else{
    int f = 1;
    int i;
    for(i=0; i<iLevel; i++) f = f * pParam->nFanout;
    snprintf(aBuf, DB_KEY_BYTES, "c.%d.%.10d", iLevel, f*(iKey/f));
  }
}
