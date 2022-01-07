
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int line; int buffer_len; scalar_t__ text; scalar_t__ broken_text; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DestroyWindow (int ) ;
 int EM_GETLINE ;
 int EM_GETLINECOUNT ;
 scalar_t__ FALSE ;
 int SendMessageA (int ,int ,int,int ) ;
 scalar_t__ TRUE ;
 int WM_SETTEXT ;
 TYPE_1__* gl ;
 scalar_t__ is_rtl () ;
 int memset (char*,int,int const) ;
 int min (int,scalar_t__) ;
 int new_richedit (int *) ;
 int ok (int,char*,...) ;
 int strcpy (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int const) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_EM_GETLINE(void)
{
  int i;
  HWND hwndRichEdit = new_richedit(((void*)0));
  static const int nBuf = 1024;
  char dest[1024], origdest[1024];
  LRESULT linecount;
  const char text[] = "foo bar\r\n"
      "\r"
      "\r\r\n"
      "bar\n";
  BOOL broken_os = FALSE;
  BOOL rtl = is_rtl();

  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);
  linecount = SendMessageA(hwndRichEdit, EM_GETLINECOUNT, 0, 0);
  if (linecount == 4)
  {
    broken_os = TRUE;
    win_skip("Win9x, WinME and NT4 handle '\\r only' differently\n");
  }

  memset(origdest, 0xBB, nBuf);
  for (i = 0; i < ARRAY_SIZE(gl); i++)
  {
    int nCopied, expected_nCopied, expected_bytes_written;
    char gl_text[1024];

    if (gl[i].line >= linecount)
      continue;

    if (broken_os && gl[i].broken_text)

      strcpy(gl_text, gl[i].broken_text);
    else
      strcpy(gl_text, gl[i].text);

    expected_nCopied = min(gl[i].buffer_len, strlen(gl_text));

    expected_bytes_written = min(gl[i].buffer_len, strlen(gl_text) + (broken_os ? 0 : 1));

    memset(dest, 0xBB, nBuf);
    *(WORD *) dest = gl[i].buffer_len;



    nCopied = SendMessageA(hwndRichEdit, EM_GETLINE, gl[i].line, (LPARAM)dest);
    ok(nCopied == expected_nCopied, "%d: %d!=%d\n", i, nCopied,
       expected_nCopied);

    if (gl[i].buffer_len == 0)
      ok(!dest[0] && !dest[1] && !strncmp(dest+2, origdest+2, nBuf-2),
         "buffer_len=0\n");
    else if (gl[i].buffer_len == 1)
      ok(dest[0] == gl_text[0] && !dest[1] &&
         !strncmp(dest+2, origdest+2, nBuf-2), "buffer_len=1\n");
    else
    {
      ok(!strncmp(dest, gl_text, expected_bytes_written),
         "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
      if (! rtl || expected_bytes_written == gl[i].buffer_len)
        ok(!strncmp(dest + expected_bytes_written, origdest
                    + expected_bytes_written, nBuf - expected_bytes_written),
           "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
      else
        ok(dest[expected_bytes_written] == 0 &&
           !strncmp(dest + expected_bytes_written + 1, origdest
                    + expected_bytes_written + 1, nBuf - (expected_bytes_written + 1)),
           "%d: expected_bytes_written=%d\n", i, expected_bytes_written);
    }
  }

  DestroyWindow(hwndRichEdit);
}
