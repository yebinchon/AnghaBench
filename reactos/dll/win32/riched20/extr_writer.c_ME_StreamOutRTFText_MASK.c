#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_5__ {scalar_t__ nDefaultCodePage; scalar_t__ nCodePage; } ;
typedef  TYPE_1__ ME_OutStream ;
typedef  int LONG ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CP_SYMBOL ; 
 scalar_t__ CP_UTF8 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,char*) ; 
 int STREAMOUT_BUFFER_SIZE ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int const*) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static BOOL
FUNC6(ME_OutStream *pStream, const WCHAR *text, LONG nChars)
{
  char buffer[STREAMOUT_BUFFER_SIZE];
  int pos = 0;
  int fit, nBytes, i;

  if (nChars == -1)
    nChars = FUNC3(text);
  
  while (nChars) {
    /* In UTF-8 mode, font charsets are not used. */
    if (pStream->nDefaultCodePage == CP_UTF8) {
      /* 6 is the maximum character length in UTF-8 */
      fit = FUNC4(nChars, STREAMOUT_BUFFER_SIZE / 6);
      nBytes = FUNC2(CP_UTF8, 0, text, fit, buffer,
                                   STREAMOUT_BUFFER_SIZE, NULL, NULL);
      nChars -= fit;
      text += fit;
      for (i = 0; i < nBytes; i++)
        if (buffer[i] == '{' || buffer[i] == '}' || buffer[i] == '\\') {
          if (!FUNC1(pStream, "%.*s\\", i - pos, buffer + pos))
            return FALSE;
          pos = i;
        }
      if (pos < nBytes)
        if (!FUNC0(pStream, buffer + pos, nBytes - pos))
          return FALSE;
      pos = 0;
    } else if (*text < 128) {
      if (*text == '{' || *text == '}' || *text == '\\')
        buffer[pos++] = '\\';
      buffer[pos++] = (char)(*text++);
      nChars--;
    } else {
      BOOL unknown = FALSE;
      char letter[3];

      /* FIXME: In the MS docs for WideCharToMultiByte there is a big list of
       * codepages including CP_SYMBOL for which the last parameter must be set
       * to NULL for the function to succeed. But in Wine we need to care only
       * about CP_SYMBOL */
      nBytes = FUNC2(pStream->nCodePage, 0, text, 1,
                                   letter, 3, NULL,
                                   (pStream->nCodePage == CP_SYMBOL) ? NULL : &unknown);
      if (unknown)
        pos += FUNC5(buffer + pos, "\\u%d?", (short)*text);
      else if ((BYTE)*letter < 128) {
        if (*letter == '{' || *letter == '}' || *letter == '\\')
          buffer[pos++] = '\\';
        buffer[pos++] = *letter;
      } else {
         for (i = 0; i < nBytes; i++)
           pos += FUNC5(buffer + pos, "\\'%02x", (BYTE)letter[i]);
      }
      text++;
      nChars--;
    }
    if (pos >= STREAMOUT_BUFFER_SIZE - 11) {
      if (!FUNC0(pStream, buffer, pos))
        return FALSE;
      pos = 0;
    }
  }
  return FUNC0(pStream, buffer, pos);
}