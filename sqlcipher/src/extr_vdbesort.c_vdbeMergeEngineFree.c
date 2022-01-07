
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nTree; int * aReadr; } ;
typedef TYPE_1__ MergeEngine ;


 int sqlite3_free (TYPE_1__*) ;
 int vdbePmaReaderClear (int *) ;

__attribute__((used)) static void vdbeMergeEngineFree(MergeEngine *pMerger){
  int i;
  if( pMerger ){
    for(i=0; i<pMerger->nTree; i++){
      vdbePmaReaderClear(&pMerger->aReadr[i]);
    }
  }
  sqlite3_free(pMerger);
}
