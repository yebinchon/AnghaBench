
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zErr; } ;
typedef TYPE_1__ GState ;


 int ofst2byte (TYPE_1__*,int) ;
 int ofst4byte (TYPE_1__*,int) ;
 int ofstWalkPage (TYPE_1__*,int) ;

__attribute__((used)) static void ofstWalkInteriorPage(GState *p){
  int nCell;
  int i;
  int ofst;
  int iChild;

  nCell = ofst2byte(p, 3);
  for(i=0; i<nCell; i++){
    ofst = ofst2byte(p, 12+i*2);
    iChild = ofst4byte(p, ofst);
    ofstWalkPage(p, iChild);
    if( p->zErr ) return;
  }
  ofstWalkPage(p, ofst4byte(p, 8));
}
