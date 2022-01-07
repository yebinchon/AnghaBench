
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int *,int,int ,int *,int,int *) ;
 char* FromWide (int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int snwprintf (int *,int,char*,int) ;
 int wmemchr (char*,int ,int) ;

char *vlc_dlerror(void)
{
    wchar_t wmsg[256];
    int i = 0, i_error = GetLastError();

    FormatMessageW( FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                    ((void*)0), i_error, MAKELANGID (LANG_NEUTRAL, SUBLANG_DEFAULT),
                    wmsg, 256, ((void*)0) );


    while( !wmemchr( L"\r\n\0", wmsg[i], 3 ) )
        i++;

    snwprintf( wmsg + i, 256 - i, L" (error %i)", i_error );
    return FromWide( wmsg );
}
