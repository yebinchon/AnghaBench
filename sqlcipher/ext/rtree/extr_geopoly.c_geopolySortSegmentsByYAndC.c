
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_1__ GeoSegment ;


 TYPE_1__* geopolySegmentMerge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static GeoSegment *geopolySortSegmentsByYAndC(GeoSegment *pList){
  int mx = 0;
  int i;
  GeoSegment *p;
  GeoSegment *a[50];
  while( pList ){
    p = pList;
    pList = pList->pNext;
    p->pNext = 0;
    for(i=0; i<mx && a[i]; i++){
      p = geopolySegmentMerge(a[i], p);
      a[i] = 0;
    }
    a[i] = p;
    if( i>=mx ) mx = i+1;
  }
  p = 0;
  for(i=0; i<mx; i++){
    p = geopolySegmentMerge(a[i], p);
  }
  return p;
}
