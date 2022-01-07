
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iType; } ;
typedef int PLWriter ;
typedef int PLReader ;
typedef TYPE_1__ DLWriter ;
typedef int DLReader ;


 scalar_t__ DL_POSITIONS_OFFSETS ;
 int assert (int) ;
 scalar_t__ dlrDocid (int *) ;
 int plrAtEnd (int *) ;
 scalar_t__ plrColumn (int *) ;
 int plrDestroy (int *) ;
 int plrInit (int *,int *) ;
 scalar_t__ plrPosition (int *) ;
 int plrStep (int *) ;
 int plwAdd (int *,scalar_t__,scalar_t__,int ,int ) ;
 int plwDestroy (int *) ;
 int plwInit (int *,TYPE_1__*,scalar_t__) ;
 int plwTerminate (int *) ;

__attribute__((used)) static void posListPhraseMerge(DLReader *pLeft, DLReader *pRight,
                               DLWriter *pOut){
  PLReader left, right;
  PLWriter writer;
  int match = 0;

  assert( dlrDocid(pLeft)==dlrDocid(pRight) );
  assert( pOut->iType!=DL_POSITIONS_OFFSETS );

  plrInit(&left, pLeft);
  plrInit(&right, pRight);

  while( !plrAtEnd(&left) && !plrAtEnd(&right) ){
    if( plrColumn(&left)<plrColumn(&right) ){
      plrStep(&left);
    }else if( plrColumn(&left)>plrColumn(&right) ){
      plrStep(&right);
    }else if( plrPosition(&left)+1<plrPosition(&right) ){
      plrStep(&left);
    }else if( plrPosition(&left)+1>plrPosition(&right) ){
      plrStep(&right);
    }else{
      if( !match ){
        plwInit(&writer, pOut, dlrDocid(pLeft));
        match = 1;
      }
      plwAdd(&writer, plrColumn(&right), plrPosition(&right), 0, 0);
      plrStep(&left);
      plrStep(&right);
    }
  }

  if( match ){
    plwTerminate(&writer);
    plwDestroy(&writer);
  }

  plrDestroy(&left);
  plrDestroy(&right);
}
