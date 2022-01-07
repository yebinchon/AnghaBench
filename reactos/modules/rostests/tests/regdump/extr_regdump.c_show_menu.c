
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _T (char*) ;
 int _tprintf (int ) ;
 char* default_cmd_line1 ;
 char* default_cmd_line2 ;
 char* default_cmd_line3 ;
 char* default_cmd_line4 ;
 char* default_cmd_line5 ;
 char* default_cmd_line6 ;
 char* default_cmd_line7 ;
 char* default_cmd_line8 ;
 char* default_cmd_line9 ;
 int printf (char*,char*) ;

void show_menu(void)
{
    _tprintf(_T("\nchoose test :\n"));
    _tprintf(_T("  0 = Exit\n"));
         printf("  1 = %s\n", default_cmd_line1);
         printf("  2 = %s\n", default_cmd_line2);
         printf("  3 = %s\n", default_cmd_line3);
         printf("  4 = %s\n", default_cmd_line4);
         printf("  5 = %s\n", default_cmd_line5);
         printf("  6 = %s\n", default_cmd_line6);
         printf("  7 = %s\n", default_cmd_line7);
         printf("  8 = %s\n", default_cmd_line8);
         printf("  9 = %s\n", default_cmd_line9);
}
