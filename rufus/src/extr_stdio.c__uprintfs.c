
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int Edit_GetLineCount (int *) ;
 int Edit_ReplaceSel (int *,int *) ;
 int Edit_Scroll (int *,int ,int ) ;
 int Edit_SetSel (int *,int ,int ) ;
 int * INVALID_HANDLE_VALUE ;
 int MAX_LOG_SIZE ;
 int OutputDebugStringW (int *) ;
 int free (int *) ;
 int * hLog ;
 int * utf8_to_wchar (char const*) ;

void _uprintfs(const char* str)
{
 wchar_t* wstr;
 wstr = utf8_to_wchar(str);
 OutputDebugStringW(wstr);
 if ((hLog != ((void*)0)) && (hLog != INVALID_HANDLE_VALUE)) {
  Edit_SetSel(hLog, MAX_LOG_SIZE, MAX_LOG_SIZE);
  Edit_ReplaceSel(hLog, wstr);
  Edit_Scroll(hLog, Edit_GetLineCount(hLog), 0);
 }
 free(wstr);
}
