
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pNext; } ;
typedef TYPE_1__ GeoEvent ;


 TYPE_1__* geopolyEventMerge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static GeoEvent *geopolySortEventsByX(GeoEvent *aEvent, int nEvent){
  int mx = 0;
  int i, j;
  GeoEvent *p;
  GeoEvent *a[50];
  for(i=0; i<nEvent; i++){
    p = &aEvent[i];
    p->pNext = 0;
    for(j=0; j<mx && a[j]; j++){
      p = geopolyEventMerge(a[j], p);
      a[j] = 0;
    }
    a[j] = p;
    if( j>=mx ) mx = j+1;
  }
  p = 0;
  for(i=0; i<mx; i++){
    p = geopolyEventMerge(a[i], p);
  }
  return p;
}
