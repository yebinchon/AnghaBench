
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_6__ {int has_iPrevDocid; scalar_t__ iPrevDocid; int b; } ;
struct TYPE_5__ {scalar_t__ iOffset; scalar_t__ iPos; scalar_t__ iColumn; TYPE_2__* dlw; } ;
typedef TYPE_1__ PLWriter ;
typedef TYPE_2__ DLWriter ;


 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend (int ,char*,int) ;
 int putVarint (char*,scalar_t__) ;

__attribute__((used)) static void plwInit(PLWriter *pWriter, DLWriter *dlw, sqlite_int64 iDocid){
  char c[VARINT_MAX];
  int n;

  pWriter->dlw = dlw;


  assert( !pWriter->dlw->has_iPrevDocid || iDocid>pWriter->dlw->iPrevDocid );
  n = putVarint(c, iDocid-pWriter->dlw->iPrevDocid);
  dataBufferAppend(pWriter->dlw->b, c, n);
  pWriter->dlw->iPrevDocid = iDocid;

  pWriter->dlw->has_iPrevDocid = 1;


  pWriter->iColumn = 0;
  pWriter->iPos = 0;
  pWriter->iOffset = 0;
}
