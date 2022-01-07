
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* zName; } ;


 int ArraySize (TYPE_1__*) ;
 TYPE_1__* aLib ;

const char *tdb_system_name(int i){
  if( i<0 || i>=ArraySize(aLib) ) return 0;
  return aLib[i].zName;
}
