
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int partitionW ;
typedef char WCHAR ;


 char* heap_alloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlenW (char const*) ;

__attribute__((used)) static WCHAR *get_osname( const WCHAR *caption )
{
    static const WCHAR partitionW[] =
        {'|','C',':','\\','W','I','N','D','O','W','S','|','\\','D','e','v','i','c','e','\\',
         'H','a','r','d','d','i','s','k','0','\\','P','a','r','t','i','t','i','o','n','1',0};
    int len = strlenW( caption );
    WCHAR *ret;

    if (!(ret = heap_alloc( len * sizeof(WCHAR) + sizeof(partitionW) ))) return ((void*)0);
    memcpy( ret, caption, len * sizeof(WCHAR) );
    memcpy( ret + len, partitionW, sizeof(partitionW) );
    return ret;
}
