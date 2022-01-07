
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int va_list ;
typedef int HANDLE ;
typedef int FILE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 char* ToWide (char*) ;
 scalar_t__ WriteConsoleW (int ,char*,int ,int *,int *) ;
 int _fileno (int *) ;
 scalar_t__ _get_osfhandle (int) ;
 scalar_t__ _isatty (int) ;
 int fputws (char*,int *) ;
 int free (char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int vasprintf (char**,char const*,int ) ;
 int vfprintf (int *,char const*,int ) ;
 int wcslen (char*) ;

int utf8_vfprintf( FILE *stream, const char *fmt, va_list ap )
{

    return vfprintf (stream, fmt, ap);
}
