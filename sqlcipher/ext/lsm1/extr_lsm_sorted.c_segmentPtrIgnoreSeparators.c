
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int nPtr; int * aPtr; } ;
typedef int SegmentPtr ;
typedef TYPE_1__ MultiCursor ;


 int CURSOR_READ_SEPARATORS ;

__attribute__((used)) static int segmentPtrIgnoreSeparators(MultiCursor *pCsr, SegmentPtr *pPtr){
  return (pCsr->flags & CURSOR_READ_SEPARATORS)==0
      || (pPtr!=&pCsr->aPtr[pCsr->nPtr-1]);
}
