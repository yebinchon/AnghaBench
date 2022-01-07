
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_4__ {int funcFlags; } ;
typedef TYPE_1__ FuncDef ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 int SQLITE_UTF8 ;
 TYPE_1__* sqlite3FindFunction (int *,char const*,int,int ,int ) ;

__attribute__((used)) static void setLikeOptFlag(sqlite3 *db, const char *zName, u8 flagVal){
  FuncDef *pDef;
  pDef = sqlite3FindFunction(db, zName, 2, SQLITE_UTF8, 0);
  if( ALWAYS(pDef) ){
    pDef->funcFlags |= flagVal;
  }
}
