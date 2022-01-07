
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** a; } ;
struct TYPE_5__ {TYPE_2__* pHash; } ;
struct TYPE_6__ {int zName; TYPE_1__ u; } ;
typedef TYPE_2__ FuncDef ;


 TYPE_4__ sqlite3BuiltinFunctions ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;

FuncDef *sqlite3FunctionSearch(
  int h,
  const char *zFunc
){
  FuncDef *p;
  for(p=sqlite3BuiltinFunctions.a[h]; p; p=p->u.pHash){
    if( sqlite3StrICmp(p->zName, zFunc)==0 ){
      return p;
    }
  }
  return 0;
}
