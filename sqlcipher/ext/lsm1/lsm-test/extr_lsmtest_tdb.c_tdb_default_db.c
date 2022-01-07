
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* zDefaultDb; int zName; } ;


 int ArraySize (TYPE_1__*) ;
 TYPE_1__* aLib ;
 scalar_t__ strcmp (int ,char const*) ;

const char *tdb_default_db(const char *zSys){
  int i;
  for(i=0; i<ArraySize(aLib); i++){
    if( strcmp(aLib[i].zName, zSys)==0 ) return aLib[i].zDefaultDb;
  }
  return 0;
}
