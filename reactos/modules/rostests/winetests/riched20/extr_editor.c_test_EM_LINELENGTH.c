
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offset_test1 ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int DestroyWindow (int ) ;
 int EM_LINELENGTH ;
 int SendMessageA (int ,int ,int,int ) ;
 int WM_SETTEXT ;
 int is_lang_japanese ;
 int new_richedit (int *) ;
 int ok (int,char*,int,int,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_EM_LINELENGTH(void)
{
  HWND hwndRichEdit = new_richedit(((void*)0));
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

  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);

  for (i = 0; i < 10; i++) {
    result = SendMessageA(hwndRichEdit, EM_LINELENGTH, offset_test[i][0], 0);
    ok(result == offset_test[i][1], "Length of line at offset %d is %ld, expected %d\n",
        offset_test[i][0], result, offset_test[i][1]);
  }


  if (!is_lang_japanese)
    skip("Skip multibyte character tests on non-Japanese platform\n");
  else
  {
    const char *text1 =
          "wine\n"
          "richedit\x8e\xf0\n"
          "wine";
    int offset_test1[3][2] = {
           {0, 4},
           {5, 9},
           {15, 4},
    };
    SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text1);
    for (i = 0; i < sizeof(offset_test1)/sizeof(offset_test1[0]); i++) {
      result = SendMessageA(hwndRichEdit, EM_LINELENGTH, offset_test1[i][0], 0);
      ok(result == offset_test1[i][1], "Length of line at offset %d is %ld, expected %d\n",
         offset_test1[i][0], result, offset_test1[i][1]);
    }
  }

  DestroyWindow(hwndRichEdit);
}
