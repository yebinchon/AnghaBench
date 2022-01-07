
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pVList; } ;
typedef TYPE_1__ Vdbe ;


 int sqlite3VListNameToNum (int ,char const*,int) ;

int sqlite3VdbeParameterIndex(Vdbe *p, const char *zName, int nName){
  if( p==0 || zName==0 ) return 0;
  return sqlite3VListNameToNum(p->pVList, zName, nName);
}
