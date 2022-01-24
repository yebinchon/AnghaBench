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
typedef  int /*<<< orphan*/  offset_test1 ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_LINELENGTH ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  is_lang_japanese ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
  HWND hwndRichEdit = FUNC2(NULL);
  const char * text =
        "richedit1\r"
        "richedit1\n"
        "richedit1\r\n"
        "richedit1";
  int offset_test[10][2] = {
        {0, 9},
        {5, 9},
        {10, 9},
        {15, 9},
        {20, 9},
        {25, 9},
        {30, 9},
        {35, 9},
        {40, 0},
        {45, 0},
  };
  int i;
  LRESULT result;

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);

  for (i = 0; i < 10; i++) {
    result = FUNC1(hwndRichEdit, EM_LINELENGTH, offset_test[i][0], 0);
    FUNC3(result == offset_test[i][1], "Length of line at offset %d is %ld, expected %d\n",
        offset_test[i][0], result, offset_test[i][1]);
  }

  /* Test with multibyte character */
  if (!is_lang_japanese)
    FUNC4("Skip multibyte character tests on non-Japanese platform\n");
  else
  {
    const char *text1 =
          "wine\n"
          "richedit\x8e\xf0\n"
          "wine";
    int offset_test1[3][2] = {
           {0, 4},  /* Line 1: |wine\n */
           {5, 9},  /* Line 2: |richedit\x8e\xf0\n */
           {15, 4}, /* Line 3: |wine */
    };
    FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text1);
    for (i = 0; i < sizeof(offset_test1)/sizeof(offset_test1[0]); i++) {
      result = FUNC1(hwndRichEdit, EM_LINELENGTH, offset_test1[i][0], 0);
      FUNC3(result == offset_test1[i][1], "Length of line at offset %d is %ld, expected %d\n",
         offset_test1[i][0], result, offset_test1[i][1]);
    }
  }

  FUNC0(hwndRichEdit);
}