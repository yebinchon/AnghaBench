
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int NCBNAMSZ ;
 scalar_t__* gScopeID ;
 int memcpy (int*,scalar_t__*,int) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static int NetBTNameEncode(const UCHAR *p, UCHAR *buffer)
{
    int i,len=0;

    if (!p) return 0;
    if (!buffer) return 0;

    buffer[len++] = NCBNAMSZ * 2;
    for (i = 0; i < NCBNAMSZ && p[i]; i++)
    {
        buffer[len++] = ((p[i] & 0xf0) >> 4) + 'A';
        buffer[len++] = (p[i] & 0x0f) + 'A';
    }
    while (len < NCBNAMSZ * 2)
    {
        buffer[len++] = 'C';
        buffer[len++] = 'A';
    }
    if (*gScopeID)
    {
        int scopeIDLen = strlen(gScopeID);

        memcpy(buffer + len, gScopeID, scopeIDLen);
        len += scopeIDLen;
    }
    buffer[len++] = 0;
    return len;
}
