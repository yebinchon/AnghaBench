
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int memmove (int *,int *,int) ;
 int * strchrW (int *,char) ;
 int strlenW (int *) ;

__attribute__((used)) static void remove_quotes( WCHAR *str )
{
    WCHAR *p = str;
    int len = strlenW( str );

    while ((p = strchrW( p, '"' )))
    {
        memmove( p, p + 1, (len - (p - str)) * sizeof(WCHAR) );
        p++;
    }
}
