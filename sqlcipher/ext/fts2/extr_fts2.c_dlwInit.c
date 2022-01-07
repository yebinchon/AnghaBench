
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_iPrevDocid; scalar_t__ iPrevDocid; int iType; int * b; } ;
typedef int DocListType ;
typedef int DataBuffer ;
typedef TYPE_1__ DLWriter ;



__attribute__((used)) static void dlwInit(DLWriter *pWriter, DocListType iType, DataBuffer *b){
  pWriter->b = b;
  pWriter->iType = iType;
  pWriter->iPrevDocid = 0;

  pWriter->has_iPrevDocid = 0;

}
