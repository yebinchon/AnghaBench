
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;


 int EM_SETSEL ;
 int GetWindowTextA (int ,char*,int) ;
 int MAXLEN ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int hwndET2 ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void ET2_check_change(void) {
   char szLocalString[MAXLEN];

   GetWindowTextA(hwndET2, szLocalString, MAXLEN);
   if (strcmp(szLocalString, "foo")==0) {
       strcpy(szLocalString, "bar");
       SendMessageA(hwndET2, WM_SETTEXT, 0, (LPARAM) szLocalString);
   }

   SendMessageA(hwndET2, EM_SETSEL, MAXLEN - 1, MAXLEN - 1);
}
