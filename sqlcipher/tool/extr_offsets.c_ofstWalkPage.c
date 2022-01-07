
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* aPage; scalar_t__ zErr; } ;
typedef TYPE_1__ GState ;


 int ofstError (TYPE_1__*,char*,int,int) ;
 int ofstPopPage (TYPE_1__*) ;
 int ofstPushPage (TYPE_1__*,int) ;
 int ofstWalkInteriorPage (TYPE_1__*) ;
 int ofstWalkLeafPage (TYPE_1__*) ;

__attribute__((used)) static void ofstWalkPage(GState *p, int pgno){
  if( p->zErr ) return;
  ofstPushPage(p, pgno);
  if( p->zErr ) return;
  if( p->aPage[0]==5 ){
    ofstWalkInteriorPage(p);
  }else if( p->aPage[0]==13 ){
    ofstWalkLeafPage(p);
  }else{
    ofstError(p, "page %d has a faulty type byte: %d", pgno, p->aPage[0]);
  }
  ofstPopPage(p);
}
