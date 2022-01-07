
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {int style; void* hloc32A; void* hloc32W; int buffer_size; int flags; scalar_t__ selection_end; scalar_t__ selection_start; scalar_t__ y_offset; scalar_t__ x_offset; int * hlocapp; scalar_t__ is_unicode; } ;
typedef int INT ;
typedef void* HLOCAL ;
typedef TYPE_1__ EDITSTATE ;
typedef int CHAR ;


 int CP_ACP ;
 int EDIT_BuildLineDefs_ML (TYPE_1__*,int ,int ,int ,int *) ;
 int EDIT_EM_EmptyUndoBuffer (TYPE_1__*) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_LockBuffer (TYPE_1__*) ;
 int EDIT_UnlockBuffer (TYPE_1__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_1__*) ;
 int EDIT_UpdateText (TYPE_1__*,int *,int ) ;
 int EF_MODIFIED ;
 int EF_UPDATE ;
 int ERR (char*) ;
 int ES_MULTILINE ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 void* LocalAlloc (int,int) ;
 int LocalFree (void*) ;
 void* LocalLock (void*) ;
 int LocalSize (void*) ;
 int LocalUnlock (void*) ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int) ;
 int TRUE ;
 int WARN (char*) ;
 int get_text_length (TYPE_1__*) ;
 int text_buffer_changed (TYPE_1__*) ;

__attribute__((used)) static void EDIT_EM_SetHandle(EDITSTATE *es, HLOCAL hloc)
{
 if (!(es->style & ES_MULTILINE))
  return;

 if (!hloc) {
  WARN("called with NULL handle\n");
  return;
 }

 EDIT_UnlockBuffer(es, TRUE);

 if(es->is_unicode)
 {
     if(es->hloc32A)
     {
  LocalFree(es->hloc32A);
  es->hloc32A = ((void*)0);
     }
     es->hloc32W = hloc;
 }
 else
 {
     INT countW, countA;
     HLOCAL hloc32W_new;
     WCHAR *textW;
     CHAR *textA;

     countA = LocalSize(hloc);
     textA = LocalLock(hloc);
     countW = MultiByteToWideChar(CP_ACP, 0, textA, countA, ((void*)0), 0);
     if(!(hloc32W_new = LocalAlloc(LMEM_MOVEABLE | LMEM_ZEROINIT, countW * sizeof(WCHAR))))
     {
  ERR("Could not allocate new unicode buffer\n");
  return;
     }
     textW = LocalLock(hloc32W_new);
     MultiByteToWideChar(CP_ACP, 0, textA, countA, textW, countW);
     LocalUnlock(hloc32W_new);
     LocalUnlock(hloc);

     if(es->hloc32W)
  LocalFree(es->hloc32W);

     es->hloc32W = hloc32W_new;
     es->hloc32A = hloc;
 }

 es->buffer_size = LocalSize(es->hloc32W)/sizeof(WCHAR) - 1;


        es->hlocapp = ((void*)0);

 EDIT_LockBuffer(es);
        text_buffer_changed(es);

 es->x_offset = es->y_offset = 0;
 es->selection_start = es->selection_end = 0;
 EDIT_EM_EmptyUndoBuffer(es);
 es->flags &= ~EF_MODIFIED;
 es->flags &= ~EF_UPDATE;
 EDIT_BuildLineDefs_ML(es, 0, get_text_length(es), 0, ((void*)0));
 EDIT_UpdateText(es, ((void*)0), TRUE);
 EDIT_EM_ScrollCaret(es);

 EDIT_UpdateScrollInfo(es);
}
