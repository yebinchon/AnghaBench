
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * heap_alloc (size_t) ;
 int lstrlenW (int const*) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static inline WCHAR *heap_strdupW(const WCHAR *str)
{
    WCHAR *ret = ((void*)0);

    if(str) {
        size_t size;

        size = (lstrlenW(str)+1)*sizeof(WCHAR);
        ret = heap_alloc(size);
        if(ret)
            memcpy(ret, str, size);
    }

    return ret;
}
