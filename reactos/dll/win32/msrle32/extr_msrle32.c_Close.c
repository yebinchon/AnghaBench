
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * pCurFrame; int * pPrevFrame; } ;
typedef int LRESULT ;
typedef TYPE_1__ CodecInfo ;


 int CompressEnd (TYPE_1__*) ;
 int LocalFree (TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int assert (int ) ;

__attribute__((used)) static LRESULT Close(CodecInfo *pi)
{
  TRACE("(%p)\n", pi);


  assert(pi != ((void*)0));

  if (pi->pPrevFrame != ((void*)0) || pi->pCurFrame != ((void*)0))
    CompressEnd(pi);

  LocalFree(pi);
  return 1;
}
