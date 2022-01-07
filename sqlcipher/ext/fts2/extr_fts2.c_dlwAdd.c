
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_3__ {scalar_t__ iPrevDocid; int has_iPrevDocid; scalar_t__ iType; int b; } ;
typedef TYPE_1__ DLWriter ;


 scalar_t__ DL_DOCIDS ;
 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend (int ,char*,int) ;
 int putVarint (char*,scalar_t__) ;

__attribute__((used)) static void dlwAdd(DLWriter *pWriter, sqlite_int64 iDocid){
  char c[VARINT_MAX];
  int n = putVarint(c, iDocid-pWriter->iPrevDocid);


  assert( !pWriter->has_iPrevDocid || iDocid>pWriter->iPrevDocid );
  assert( pWriter->iType==DL_DOCIDS );

  dataBufferAppend(pWriter->b, c, n);
  pWriter->iPrevDocid = iDocid;

  pWriter->has_iPrevDocid = 1;

}
