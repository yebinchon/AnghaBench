
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_6__ {int buffer_size; scalar_t__ hloc32W; } ;
typedef scalar_t__ HLOCAL ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_LockBuffer (TYPE_1__*) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_UnlockBuffer (TYPE_1__*,int ) ;
 int EN_ERRSPACE ;
 int FALSE ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 scalar_t__ LocalReAlloc (scalar_t__,int,int) ;
 int LocalSize (scalar_t__) ;
 int ROUND_TO_GROW (int) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int WARN (char*,int) ;

__attribute__((used)) static BOOL EDIT_MakeFit(EDITSTATE *es, UINT size)
{
 HLOCAL hNew32W;

 if (size <= es->buffer_size)
  return TRUE;

 TRACE("trying to ReAlloc to %d+1 characters\n", size);


 EDIT_UnlockBuffer(es, TRUE);

 if (es->hloc32W) {
     UINT alloc_size = ROUND_TO_GROW((size + 1) * sizeof(WCHAR));
     if ((hNew32W = LocalReAlloc(es->hloc32W, alloc_size, LMEM_MOVEABLE | LMEM_ZEROINIT))) {
  TRACE("Old 32 bit handle %p, new handle %p\n", es->hloc32W, hNew32W);
  es->hloc32W = hNew32W;
  es->buffer_size = LocalSize(hNew32W)/sizeof(WCHAR) - 1;
     }
 }

 EDIT_LockBuffer(es);

 if (es->buffer_size < size) {
  WARN("FAILED !  We now have %d+1\n", es->buffer_size);
  EDIT_NOTIFY_PARENT(es, EN_ERRSPACE);
  return FALSE;
 } else {
  TRACE("We now have %d+1\n", es->buffer_size);
  return TRUE;
 }
}
