
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 char* heap_alloc (int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static WORD SLTG_ReadStringA(const char *ptr, char **str)
{
    WORD bytelen;

    *str = ((void*)0);
    bytelen = *(const WORD*)ptr;
    if(bytelen == 0xffff) return 2;
    *str = heap_alloc(bytelen + 1);
    memcpy(*str, ptr + 2, bytelen);
    (*str)[bytelen] = '\0';
    return bytelen + 2;
}
