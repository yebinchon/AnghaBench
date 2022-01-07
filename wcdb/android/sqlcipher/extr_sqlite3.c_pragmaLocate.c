
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zName; } ;
typedef TYPE_1__ PragmaName ;


 int ArraySize (TYPE_1__ const*) ;
 TYPE_1__ const* aPragmaName ;
 int sqlite3_stricmp (char const*,int ) ;

__attribute__((used)) static const PragmaName *pragmaLocate(const char *zName){
  int upr, lwr, mid = 0, rc;
  lwr = 0;
  upr = ArraySize(aPragmaName)-1;
  while( lwr<=upr ){
    mid = (lwr+upr)/2;
    rc = sqlite3_stricmp(zName, aPragmaName[mid].zName);
    if( rc==0 ) break;
    if( rc<0 ){
      upr = mid - 1;
    }else{
      lwr = mid + 1;
    }
  }
  return lwr>upr ? 0 : &aPragmaName[mid];
}
