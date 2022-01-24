#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szEOL ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {int nFlags; scalar_t__ len; } ;
struct TYPE_9__ {TYPE_4__ run; } ;
struct TYPE_13__ {TYPE_1__ member; } ;
struct TYPE_11__ {TYPE_7__* pRun; scalar_t__ nOffset; } ;
struct TYPE_10__ {int /*<<< orphan*/  bEmulateVersion10; } ;
typedef  TYPE_2__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_OutStream ;
typedef  TYPE_3__ ME_Cursor ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MERF_ENDPARA ; 
 TYPE_7__* FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int SF_UNICODE ; 
 int SF_USECODEPAGE ; 
 scalar_t__ TRUE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diRun ; 
 scalar_t__ FUNC4 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 int FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC8(ME_TextEditor *editor, ME_OutStream *pStream,
                             const ME_Cursor *start, int nChars, DWORD dwFormat)
{
  ME_Cursor cursor = *start;
  int nLen;
  UINT nCodePage = CP_ACP;
  char *buffer = NULL;
  int nBufLen = 0;
  BOOL success = TRUE;

  if (!cursor.pRun)
    return FALSE;

  if (dwFormat & SF_USECODEPAGE)
    nCodePage = FUNC0(dwFormat);

  /* TODO: Handle SF_TEXTIZED */

  while (success && nChars && cursor.pRun) {
    nLen = FUNC7(nChars, cursor.pRun->member.run.len - cursor.nOffset);

    if (!editor->bEmulateVersion10 && cursor.pRun->member.run.nFlags & MERF_ENDPARA)
    {
      static const WCHAR szEOL[] = { '\r', '\n' };

      /* richedit 2.0 - all line breaks are \r\n */
      if (dwFormat & SF_UNICODE)
        success = FUNC2(pStream, (const char *)szEOL, sizeof(szEOL));
      else
        success = FUNC2(pStream, "\r\n", 2);
    } else {
      if (dwFormat & SF_UNICODE)
        success = FUNC2(pStream, (const char *)(FUNC4( &cursor.pRun->member.run, cursor.nOffset )),
                                   sizeof(WCHAR) * nLen);
      else {
        int nSize;

        nSize = FUNC3(nCodePage, 0, FUNC4( &cursor.pRun->member.run, cursor.nOffset ),
                                    nLen, NULL, 0, NULL, NULL);
        if (nSize > nBufLen) {
          buffer = FUNC6(buffer, nSize);
          nBufLen = nSize;
        }
        FUNC3(nCodePage, 0, FUNC4( &cursor.pRun->member.run, cursor.nOffset ),
                            nLen, buffer, nSize, NULL, NULL);
        success = FUNC2(pStream, buffer, nSize);
      }
    }

    nChars -= nLen;
    cursor.nOffset = 0;
    cursor.pRun = FUNC1(cursor.pRun, diRun);
  }

  FUNC5(buffer);
  return success;
}