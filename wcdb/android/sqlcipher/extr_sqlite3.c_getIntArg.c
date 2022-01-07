
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ nArg; scalar_t__ nUsed; int * apArg; } ;
typedef TYPE_1__ PrintfArguments ;


 int sqlite3_value_int64 (int ) ;

__attribute__((used)) static sqlite3_int64 getIntArg(PrintfArguments *p){
  if( p->nArg<=p->nUsed ) return 0;
  return sqlite3_value_int64(p->apArg[p->nUsed++]);
}
