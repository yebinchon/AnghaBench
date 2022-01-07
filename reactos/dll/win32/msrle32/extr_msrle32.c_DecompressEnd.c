
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * palette_map; int bDecompress; } ;
typedef int LRESULT ;
typedef TYPE_1__ CodecInfo ;


 int FALSE ;
 int ICERR_OK ;
 int LocalFree (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int assert (int ) ;

__attribute__((used)) static LRESULT DecompressEnd(CodecInfo *pi)
{
  TRACE("(%p)\n",pi);


  assert(pi != ((void*)0));

  pi->bDecompress = FALSE;

  if (pi->palette_map != ((void*)0)) {
    LocalFree(pi->palette_map);
    pi->palette_map = ((void*)0);
  }

  return ICERR_OK;
}
