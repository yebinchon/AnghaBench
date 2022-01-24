#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ LPVOID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EM_GETHANDLE ; 
 int /*<<< orphan*/  EM_SETHANDLE ; 
 int LMEM_MOVEABLE ; 
 int LMEM_ZEROINIT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  NewText ; 
 int /*<<< orphan*/  NewTextW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ResultX ; 
 int /*<<< orphan*/  ResultY ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * TextBuffer ; 
 scalar_t__ UnicodeUsed ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
VOID
FUNC10(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      LPVOID pMem;
      HANDLE hNewBuffer;
      int ret;

      FUNC1((HLOCAL)FUNC6(handle, EM_GETHANDLE, 0, 0L));
      if (UnicodeUsed)
          {
            hNewBuffer = FUNC0(LMEM_MOVEABLE | LMEM_ZEROINIT, 100);
            pMem = FUNC3(hNewBuffer);
            FUNC9((wchar_t*)pMem,NewTextW);
          }
      else
          {
            hNewBuffer = FUNC0(LMEM_MOVEABLE | LMEM_ZEROINIT,50);
            pMem = FUNC3(hNewBuffer);
            FUNC8((char*)pMem,NewText);
          }

      FUNC4(pMem);
      hNewBuffer = FUNC2(pMem);

	  /* Updates the buffer and displays new buffer */
      ret =  FUNC6(handle, EM_SETHANDLE, (WPARAM)hNewBuffer, 0L);

      FUNC7(ret,&TextBuffer[8]);
      FUNC5(TextBuffer,ResultX,ResultY,16);
    }