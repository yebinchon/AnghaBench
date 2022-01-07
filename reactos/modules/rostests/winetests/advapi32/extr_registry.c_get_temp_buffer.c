
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list ;
typedef int UINT ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 char* HeapReAlloc (int ,int ,char*,int) ;

__attribute__((used)) static char *get_temp_buffer( int size )
{
    static char *list[32];
    static UINT pos;
    char *ret;
    UINT idx;

    idx = ++pos % (sizeof(list)/sizeof(list[0]));
    if (list[idx])
        ret = HeapReAlloc( GetProcessHeap(), 0, list[idx], size );
    else
        ret = HeapAlloc( GetProcessHeap(), 0, size );
    if (ret) list[idx] = ret;
    return ret;
}
