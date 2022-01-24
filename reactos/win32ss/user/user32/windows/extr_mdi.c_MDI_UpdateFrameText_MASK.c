#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lpBuffer ;
typedef  char WCHAR ;
struct TYPE_3__ {char* frameTitle; scalar_t__ hwndActiveChild; scalar_t__ hwndChildMaximized; } ;
typedef  TYPE_1__ MDICLIENTINFO ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DC_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int MDI_MAXTITLELENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWOPARAM_ROUTINE_REDRAWTITLE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14( HWND frame, HWND hClient, BOOL repaint, LPCWSTR lpTitle )
{
    WCHAR   lpBuffer[MDI_MAXTITLELENGTH+1];
    MDICLIENTINFO *ci = FUNC9( hClient );

    FUNC7("frameText %s\n", FUNC8(lpTitle));

    if (!ci) return;

    if (!lpTitle && !ci->frameTitle)  /* first time around, get title from the frame window */
    {
        FUNC2( frame, lpBuffer, sizeof(lpBuffer)/sizeof(WCHAR) );
        lpTitle = lpBuffer;
    }

    /* store new "default" title if lpTitle is not NULL */
    if (lpTitle)
    {
	FUNC4( FUNC1(), 0, ci->frameTitle );
	if ((ci->frameTitle = FUNC3( FUNC1(), 0, (FUNC13(lpTitle)+1)*sizeof(WCHAR))))
            FUNC12( ci->frameTitle, lpTitle );
    }

    if (ci->frameTitle)
    {
	if (ci->hwndChildMaximized)
	{
	    /* combine frame title and child title if possible */

	    static const WCHAR lpBracket[]  = {' ','-',' ','[',0};
	    static const WCHAR lpBracket2[]  = {']',0};
	    int	i_frame_text_length = FUNC13(ci->frameTitle);

	    FUNC10( lpBuffer, ci->frameTitle, MDI_MAXTITLELENGTH);

	    if( i_frame_text_length + 6 < MDI_MAXTITLELENGTH )
            {
		FUNC11( lpBuffer, lpBracket );
                if (FUNC2( ci->hwndActiveChild, lpBuffer + i_frame_text_length + 4,
                                    MDI_MAXTITLELENGTH - i_frame_text_length - 5 ))
                    FUNC11( lpBuffer, lpBracket2 );
                else
                    lpBuffer[i_frame_text_length] = 0;  /* remove bracket */
            }
	}
	else
	{
            FUNC10(lpBuffer, ci->frameTitle, MDI_MAXTITLELENGTH+1 );
	}
    }
    else
	lpBuffer[0] = '\0';

    FUNC0( frame, WM_SETTEXT, 0, (LPARAM)lpBuffer );

    if (repaint)
    {
       if (!FUNC5((DWORD_PTR)frame,DC_ACTIVE,TWOPARAM_ROUTINE_REDRAWTITLE))
        FUNC6( frame, 0,0,0,0,0, SWP_FRAMECHANGED |
                      SWP_NOSIZE | SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER );
    }
}