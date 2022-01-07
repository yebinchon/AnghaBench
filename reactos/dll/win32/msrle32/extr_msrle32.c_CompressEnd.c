
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nPrevFrame; int * palette_map; int bCompress; int * pCurFrame; int * pPrevFrame; } ;
typedef int LRESULT ;
typedef TYPE_1__ CodecInfo ;


 int FALSE ;
 int GlobalFree (int ) ;
 int GlobalHandle (int *) ;
 int GlobalUnlock (int ) ;
 int ICERR_OK ;
 int LocalFree (int *) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static LRESULT CompressEnd(CodecInfo *pi)
{
  TRACE("(%p)\n",pi);

  if (pi != ((void*)0)) {
    if (pi->pPrevFrame != ((void*)0))
    {
      GlobalUnlock(GlobalHandle(pi->pPrevFrame));
      GlobalFree(GlobalHandle(pi->pPrevFrame));
    }
    if (pi->pCurFrame != ((void*)0))
    {
      GlobalUnlock(GlobalHandle(pi->pCurFrame));
      GlobalFree(GlobalHandle(pi->pCurFrame));
    }
    pi->pPrevFrame = ((void*)0);
    pi->pCurFrame = ((void*)0);
    pi->nPrevFrame = -1;
    pi->bCompress = FALSE;

    if (pi->palette_map != ((void*)0)) {
        LocalFree(pi->palette_map);
        pi->palette_map = ((void*)0);
    }
  }

  return ICERR_OK;
}
