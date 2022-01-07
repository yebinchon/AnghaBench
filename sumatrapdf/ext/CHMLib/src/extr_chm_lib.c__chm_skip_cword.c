
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UChar ;



__attribute__((used)) static void _chm_skip_cword(UChar **pEntry)
{
    while (*(*pEntry)++ >= 0x80)
        ;
}
