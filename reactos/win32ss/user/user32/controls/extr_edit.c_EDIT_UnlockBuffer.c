
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int lock_count; int * text; scalar_t__ hloc32W; scalar_t__ hloc32A; int hwndSelf; scalar_t__ hlocapp; } ;
typedef scalar_t__ HLOCAL ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int ERR (char*) ;
 int IsWindow (int ) ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 int * LocalLock (scalar_t__) ;
 scalar_t__ LocalReAlloc (scalar_t__,scalar_t__,int) ;
 scalar_t__ LocalSize (scalar_t__) ;
 int LocalUnlock (scalar_t__) ;
 scalar_t__ ROUND_TO_GROW (scalar_t__) ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int *,scalar_t__,int *,scalar_t__,int *,int *) ;
 scalar_t__ get_text_length (TYPE_1__*) ;

__attribute__((used)) static void EDIT_UnlockBuffer(EDITSTATE *es, BOOL force)
{
        if (es->hlocapp) return;


 if(!IsWindow(es->hwndSelf))
 {
     WARN("edit hwnd %p already destroyed\n", es->hwndSelf);
     return;
 }

 if (!es->lock_count) {
  ERR("lock_count == 0 ... please report\n");
  return;
 }
 if (!es->text) {
  ERR("es->text == 0 ... please report\n");
  return;
 }

 if (force || (es->lock_count == 1)) {
     if (es->hloc32W) {
  UINT countA = 0;
  UINT countW = get_text_length(es) + 1;

  if(es->hloc32A)
  {
      UINT countA_new = WideCharToMultiByte(CP_ACP, 0, es->text, countW, ((void*)0), 0, ((void*)0), ((void*)0));
      TRACE("Synchronizing with 32-bit ANSI buffer\n");
      TRACE("%d WCHARs translated to %d bytes\n", countW, countA_new);
      countA = LocalSize(es->hloc32A);
      if(countA_new > countA)
      {
   HLOCAL hloc32A_new;
   UINT alloc_size = ROUND_TO_GROW(countA_new);
   TRACE("Resizing 32-bit ANSI buffer from %d to %d bytes\n", countA, alloc_size);
   hloc32A_new = LocalReAlloc(es->hloc32A, alloc_size, LMEM_MOVEABLE | LMEM_ZEROINIT);
   if(hloc32A_new)
   {
       es->hloc32A = hloc32A_new;
       countA = LocalSize(hloc32A_new);
       TRACE("Real new size %d bytes\n", countA);
   }
   else
       WARN("FAILED! Will synchronize partially\n");
      }
      WideCharToMultiByte(CP_ACP, 0, es->text, countW,
                                        LocalLock(es->hloc32A), countA, ((void*)0), ((void*)0));
                    LocalUnlock(es->hloc32A);
  }

  LocalUnlock(es->hloc32W);
  es->text = ((void*)0);
     }
     else {
  ERR("no buffer ... please report\n");
  return;
     }
 }
 es->lock_count--;
}
