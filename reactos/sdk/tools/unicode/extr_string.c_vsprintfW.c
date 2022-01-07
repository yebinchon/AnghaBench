
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WCHAR ;


 int INT_MAX ;
 int vsnprintfW (int *,int ,int const*,int ) ;

int vsprintfW( WCHAR *str, const WCHAR *format, va_list valist )
{
    return vsnprintfW( str, INT_MAX, format, valist );
}
