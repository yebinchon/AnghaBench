
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nPendingData; int pendingTerms; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int fts2HashElem ;


 int SQLITE_OK ;
 int dlcDelete (int ) ;
 int fts2HashClear (int *) ;
 int fts2HashData (int *) ;
 int * fts2HashFirst (int *) ;
 int * fts2HashNext (int *) ;

__attribute__((used)) static int clearPendingTerms(fulltext_vtab *v){
  if( v->nPendingData>=0 ){
    fts2HashElem *e;
    for(e=fts2HashFirst(&v->pendingTerms); e; e=fts2HashNext(e)){
      dlcDelete(fts2HashData(e));
    }
    fts2HashClear(&v->pendingTerms);
    v->nPendingData = -1;
  }
  return SQLITE_OK;
}
