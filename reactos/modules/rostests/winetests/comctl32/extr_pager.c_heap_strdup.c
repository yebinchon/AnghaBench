
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;


 int * heap_alloc (int) ;
 int lstrcpyA (int *,int const*) ;
 int lstrlenA (int const*) ;

__attribute__((used)) static CHAR *heap_strdup(const CHAR *str)
{
    int len = lstrlenA(str) + 1;
    CHAR *ret = heap_alloc(len * sizeof(CHAR));
    lstrcpyA(ret, str);
    return ret;
}
