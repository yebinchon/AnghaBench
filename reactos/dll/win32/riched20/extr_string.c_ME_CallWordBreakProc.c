
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int (* pfnWordBreak ) (int *,int,int,int) ;int bEmulateVersion10; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int INT ;


 int CP_ACP ;
 int ME_WordBreakProc (int *,int,int,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int stub1 (int *,int,int,int) ;
 int stub2 (int *,int,int,int) ;

int
ME_CallWordBreakProc(ME_TextEditor *editor, WCHAR *str, INT len, INT start, INT code)
{
  if (!editor->pfnWordBreak) {
    return ME_WordBreakProc(str, start, len, code);
  } else if (!editor->bEmulateVersion10) {


    return editor->pfnWordBreak(str, start, len * sizeof(WCHAR), code);
  } else {
    int result;
    int buffer_size = WideCharToMultiByte(CP_ACP, 0, str, len,
                                          ((void*)0), 0, ((void*)0), ((void*)0));
    char *buffer = heap_alloc(buffer_size);
    if (!buffer) return 0;
    WideCharToMultiByte(CP_ACP, 0, str, len,
                        buffer, buffer_size, ((void*)0), ((void*)0));
    result = editor->pfnWordBreak((WCHAR*)buffer, start, buffer_size, code);
    heap_free(buffer);
    return result;
  }
}
