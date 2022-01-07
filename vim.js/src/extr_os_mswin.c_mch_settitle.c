
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 int SetConsoleTitle (int *) ;
 int SetConsoleTitleW (int *) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int gui_mch_settitle (int *,int *) ;
 int vim_free (int *) ;

void
mch_settitle(
    char_u *title,
    char_u *icon)
{



    if (title != ((void*)0))
    {
 SetConsoleTitle(title);
    }

}
