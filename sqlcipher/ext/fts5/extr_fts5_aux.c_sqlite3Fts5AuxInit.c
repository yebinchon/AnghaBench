
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct Builtin TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fts5_extension_function ;
struct TYPE_5__ {int (* xCreateFunction ) (TYPE_1__*,char const*,void*,int ,void (*) (void*)) ;} ;
typedef TYPE_1__ fts5_api ;
struct Builtin {char const* zFunc; void* pUserData; int xFunc; void (* xDestroy ) (void*) ;} ;


 int ArraySize (TYPE_4__*) ;
 int SQLITE_OK ;
 int fts5Bm25Function ;
 int fts5HighlightFunction ;
 int fts5SnippetFunction ;
 int stub1 (TYPE_1__*,char const*,void*,int ,void (*) (void*)) ;

int sqlite3Fts5AuxInit(fts5_api *pApi){
  struct Builtin {
    const char *zFunc;
    void *pUserData;
    fts5_extension_function xFunc;
    void (*xDestroy)(void*);
  } aBuiltin [] = {
    { "snippet", 0, fts5SnippetFunction, 0 },
    { "highlight", 0, fts5HighlightFunction, 0 },
    { "bm25", 0, fts5Bm25Function, 0 },
  };
  int rc = SQLITE_OK;
  int i;

  for(i=0; rc==SQLITE_OK && i<ArraySize(aBuiltin); i++){
    rc = pApi->xCreateFunction(pApi,
        aBuiltin[i].zFunc,
        aBuiltin[i].pUserData,
        aBuiltin[i].xFunc,
        aBuiltin[i].xDestroy
    );
  }

  return rc;
}
