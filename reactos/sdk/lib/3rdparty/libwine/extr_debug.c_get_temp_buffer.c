
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list ;


 int interlocked_xchg_add (int*,int) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static char *get_temp_buffer( size_t size )
{
    static char *list[32];
    static int pos;
    char *ret;
    int idx;

    idx = interlocked_xchg_add( &pos, 1 ) % (sizeof(list)/sizeof(list[0]));
    if ((ret = realloc( list[idx], size ))) list[idx] = ret;
    return ret;
}
