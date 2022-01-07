
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetACP () ;
 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int ) ;

__attribute__((used)) static WCHAR *get_codeset(void)
{
    static const WCHAR fmtW[] = {'%','u',0};
    WCHAR *ret = heap_alloc( 11 * sizeof(WCHAR) );
    if (ret) sprintfW( ret, fmtW, GetACP() );
    return ret;
}
