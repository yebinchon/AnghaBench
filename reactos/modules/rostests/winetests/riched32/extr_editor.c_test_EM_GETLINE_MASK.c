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
typedef  int WORD ;
struct TYPE_3__ {int line; int buffer_len; scalar_t__ text; scalar_t__ broken_text; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_GETLINE ; 
 int /*<<< orphan*/  EM_GETLINECOUNT ; 
 scalar_t__ FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 TYPE_1__* gl ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int const) ; 
 int FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
  int i;
  HWND hwndRichEdit = FUNC6(NULL);
  static const int nBuf = 1024;
  char dest[1024], origdest[1024];
  LRESULT linecount;
  const char text[] = "foo bar\r\n"
      "\r"
      "\r\r\n"
      "bar\n";
  BOOL broken_os = FALSE;
  BOOL rtl = FUNC3();

  FUNC2(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);
  linecount = FUNC2(hwndRichEdit, EM_GETLINECOUNT, 0, 0);
  if (linecount == 4)
  {
    broken_os = TRUE;
    FUNC11("Win9x, WinME and NT4 handle '\\r only' differently\n");
  }

  FUNC4(origdest, 0xBB, nBuf);
  for (i = 0; i < FUNC0(gl); i++)
  {
    int nCopied, expected_nCopied, expected_bytes_written;
    char gl_text[1024];

    if (gl[i].line >= linecount)
      continue; /* Win9x, WinME and NT4 */

    if (broken_os && gl[i].broken_text)
      /* Win9x, WinME and NT4 */
      FUNC8(gl_text, gl[i].broken_text);
    else
      FUNC8(gl_text, gl[i].text);

    expected_nCopied = FUNC5(gl[i].buffer_len, FUNC9(gl_text));
    /* Cater for the fact that Win9x, WinME and NT4 don't append the '\0' */
    expected_bytes_written = FUNC5(gl[i].buffer_len, FUNC9(gl_text) + (broken_os ? 0 : 1));

    FUNC4(dest, 0xBB, nBuf);
    *(WORD *) dest = gl[i].buffer_len;

    /* EM_GETLINE appends a "\r\0" to the end of the line
     * nCopied counts up to and including the '\r' */
    nCopied = FUNC2(hwndRichEdit, EM_GETLINE, gl[i].line, (LPARAM)dest);
    FUNC7(nCopied == expected_nCopied, "%d: %d!=%d\n", i, nCopied,
       expected_nCopied);
    /* two special cases since a parameter is passed via dest */
    if (gl[i].buffer_len == 0)
      FUNC7(!dest[0] && !dest[1] && !FUNC10(dest+2, origdest+2, nBuf-2),
         "buffer_len=0\n");
    else if (gl[i].buffer_len == 1)
      FUNC7(dest[0] == gl_text[0] && !dest[1] &&
         !FUNC10(dest+2, origdest+2, nBuf-2), "buffer_len=1\n");
    else
    {
      FUNC7(!FUNC10(dest, gl_text, expected_bytes_written),
         "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
      if (! rtl || expected_bytes_written == gl[i].buffer_len)
        FUNC7(!FUNC10(dest + expected_bytes_written, origdest
                    + expected_bytes_written, nBuf - expected_bytes_written),
           "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
      else
        FUNC7(dest[expected_bytes_written] == 0 &&
           !FUNC10(dest + expected_bytes_written + 1, origdest
                    + expected_bytes_written + 1, nBuf - (expected_bytes_written + 1)),
           "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
    }
  }

  FUNC1(hwndRichEdit);
}