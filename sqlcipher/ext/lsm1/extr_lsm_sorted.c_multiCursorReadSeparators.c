
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nPtr; int flags; } ;
typedef TYPE_1__ MultiCursor ;


 int CURSOR_READ_SEPARATORS ;

__attribute__((used)) static void multiCursorReadSeparators(MultiCursor *pCsr){
  if( pCsr->nPtr>0 ){
    pCsr->flags |= CURSOR_READ_SEPARATORS;
  }
}
