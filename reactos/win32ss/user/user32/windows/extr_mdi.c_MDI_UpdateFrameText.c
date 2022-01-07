
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lpBuffer ;
typedef char WCHAR ;
struct TYPE_3__ {char* frameTitle; scalar_t__ hwndActiveChild; scalar_t__ hwndChildMaximized; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef char* LPCWSTR ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;
typedef int DWORD_PTR ;
typedef scalar_t__ BOOL ;


 int DC_ACTIVE ;
 int DefWindowProcW (scalar_t__,int ,int ,int ) ;
 int GetProcessHeap () ;
 scalar_t__ GetWindowTextW (scalar_t__,char*,int) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int MDI_MAXTITLELENGTH ;
 int NtUserCallTwoParam (int ,int ,int ) ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (scalar_t__,int ,int ,int ,int ,int ,int) ;
 int TRACE (char*,int ) ;
 int TWOPARAM_ROUTINE_REDRAWTITLE ;
 int WM_SETTEXT ;
 int debugstr_w (char*) ;
 TYPE_1__* get_client_info (scalar_t__) ;
 int lstrcpynW (char*,char*,int) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static void MDI_UpdateFrameText( HWND frame, HWND hClient, BOOL repaint, LPCWSTR lpTitle )
{
    WCHAR lpBuffer[MDI_MAXTITLELENGTH+1];
    MDICLIENTINFO *ci = get_client_info( hClient );

    TRACE("frameText %s\n", debugstr_w(lpTitle));

    if (!ci) return;

    if (!lpTitle && !ci->frameTitle)
    {
        GetWindowTextW( frame, lpBuffer, sizeof(lpBuffer)/sizeof(WCHAR) );
        lpTitle = lpBuffer;
    }


    if (lpTitle)
    {
 HeapFree( GetProcessHeap(), 0, ci->frameTitle );
 if ((ci->frameTitle = HeapAlloc( GetProcessHeap(), 0, (strlenW(lpTitle)+1)*sizeof(WCHAR))))
            strcpyW( ci->frameTitle, lpTitle );
    }

    if (ci->frameTitle)
    {
 if (ci->hwndChildMaximized)
 {


     static const WCHAR lpBracket[] = {' ','-',' ','[',0};
     static const WCHAR lpBracket2[] = {']',0};
     int i_frame_text_length = strlenW(ci->frameTitle);

     lstrcpynW( lpBuffer, ci->frameTitle, MDI_MAXTITLELENGTH);

     if( i_frame_text_length + 6 < MDI_MAXTITLELENGTH )
            {
  strcatW( lpBuffer, lpBracket );
                if (GetWindowTextW( ci->hwndActiveChild, lpBuffer + i_frame_text_length + 4,
                                    MDI_MAXTITLELENGTH - i_frame_text_length - 5 ))
                    strcatW( lpBuffer, lpBracket2 );
                else
                    lpBuffer[i_frame_text_length] = 0;
            }
 }
 else
 {
            lstrcpynW(lpBuffer, ci->frameTitle, MDI_MAXTITLELENGTH+1 );
 }
    }
    else
 lpBuffer[0] = '\0';

    DefWindowProcW( frame, WM_SETTEXT, 0, (LPARAM)lpBuffer );

    if (repaint)
    {
       if (!NtUserCallTwoParam((DWORD_PTR)frame,DC_ACTIVE,TWOPARAM_ROUTINE_REDRAWTITLE))
        SetWindowPos( frame, 0,0,0,0,0, SWP_FRAMECHANGED |
                      SWP_NOSIZE | SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER );
    }
}
