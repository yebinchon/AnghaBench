
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iPos; TYPE_1__* dlw; } ;
struct TYPE_4__ {scalar_t__ iType; int b; } ;
typedef TYPE_2__ PLWriter ;


 scalar_t__ DL_DOCIDS ;
 int POS_END ;
 int VARINT_MAX ;
 int dataBufferAppend (int ,char*,int) ;
 int putVarint (char*,int ) ;

__attribute__((used)) static void plwTerminate(PLWriter *pWriter){
  if( pWriter->dlw->iType>DL_DOCIDS ){
    char c[VARINT_MAX];
    int n = putVarint(c, POS_END);
    dataBufferAppend(pWriter->dlw->b, c, n);
  }


  pWriter->iPos = -1;

}
