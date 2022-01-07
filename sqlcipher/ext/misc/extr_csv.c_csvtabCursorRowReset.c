
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {scalar_t__* aLen; scalar_t__* azVal; TYPE_1__ base; } ;
struct TYPE_6__ {int nCol; } ;
typedef TYPE_2__ CsvTable ;
typedef TYPE_3__ CsvCursor ;


 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void csvtabCursorRowReset(CsvCursor *pCur){
  CsvTable *pTab = (CsvTable*)pCur->base.pVtab;
  int i;
  for(i=0; i<pTab->nCol; i++){
    sqlite3_free(pCur->azVal[i]);
    pCur->azVal[i] = 0;
    pCur->aLen[i] = 0;
  }
}
