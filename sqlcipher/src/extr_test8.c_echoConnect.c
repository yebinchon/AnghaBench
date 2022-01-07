
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_2__ {int interp; } ;
typedef TYPE_1__ EchoModule ;


 int appendToEchoModule (int ,char*) ;
 int echoConstructor (int *,void*,int,char const* const*,int **,char**) ;

__attribute__((used)) static int echoConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  appendToEchoModule(((EchoModule *)pAux)->interp, "xConnect");
  return echoConstructor(db, pAux, argc, argv, ppVtab, pzErr);
}
