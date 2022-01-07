
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt64 ;
typedef int UChar ;



__attribute__((used)) static int _chm_parse_UTF8(UChar **pEntry, UInt64 count, char *path)
{






    while (count != 0)
    {
        *path++ = (char)(*(*pEntry)++);
        --count;
    }

    *path = '\0';
    return 1;
}
