
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;


 int ARRAY_SIZE (int ) ;
 int DestroyWindow (int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int find_tests ;
 int find_tests2 ;
 int find_tests3 ;
 scalar_t__ haystack ;
 scalar_t__ haystack2 ;
 int new_richedit (int *) ;
 int run_tests_EM_FINDTEXT (int ,char*,int ,int ) ;

__attribute__((used)) static void test_EM_FINDTEXT(void)
{
  HWND hwndRichEdit = new_richedit(((void*)0));


  run_tests_EM_FINDTEXT(hwndRichEdit, "1", find_tests, ARRAY_SIZE(find_tests));

  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)haystack);


  run_tests_EM_FINDTEXT(hwndRichEdit, "2", find_tests2, ARRAY_SIZE(find_tests2));

  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)haystack2);


  run_tests_EM_FINDTEXT(hwndRichEdit, "3", find_tests3, ARRAY_SIZE(find_tests3));

  DestroyWindow(hwndRichEdit);
}
