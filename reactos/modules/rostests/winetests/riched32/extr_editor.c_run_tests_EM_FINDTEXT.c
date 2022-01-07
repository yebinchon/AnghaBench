
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_s {int dummy; } ;
typedef int HWND ;


 int check_EM_FINDTEXT (int ,char const*,struct find_s*,int) ;
 int check_EM_FINDTEXTEX (int ,char const*,struct find_s*,int) ;

__attribute__((used)) static void run_tests_EM_FINDTEXT(HWND hwnd, const char *name, struct find_s *find,
    int num_tests)
{
  int i;

  for (i = 0; i < num_tests; i++) {
    check_EM_FINDTEXT(hwnd, name, &find[i], i);
    check_EM_FINDTEXTEX(hwnd, name, &find[i], i);
  }
}
