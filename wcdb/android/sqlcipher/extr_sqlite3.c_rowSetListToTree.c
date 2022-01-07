
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RowSetEntry {struct RowSetEntry* pRight; struct RowSetEntry* pLeft; } ;


 int assert (int) ;
 struct RowSetEntry* rowSetNDeepTree (struct RowSetEntry**,int) ;

__attribute__((used)) static struct RowSetEntry *rowSetListToTree(struct RowSetEntry *pList){
  int iDepth;
  struct RowSetEntry *p;
  struct RowSetEntry *pLeft;

  assert( pList!=0 );
  p = pList;
  pList = p->pRight;
  p->pLeft = p->pRight = 0;
  for(iDepth=1; pList; iDepth++){
    pLeft = p;
    p = pList;
    pList = p->pRight;
    p->pLeft = pLeft;
    p->pRight = rowSetNDeepTree(&pList, iDepth);
  }
  return p;
}
