
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static
char* RemoveCR(const char* txt)
{
    static char Buffer[2048];
    char* pt;

    strncpy(Buffer, txt, 2047);
    Buffer[2047] = 0;
    for (pt = Buffer; *pt; pt++)
            if (*pt == '\n' || *pt == '\r') *pt = ' ';

    return Buffer;

}
