
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsSeparator (char const) ;

const char *
ScanToken(const char *token, char chr)
{
    while (!IsSeparator(*token))
    {
        if (*token == chr) return token;
        token++;
    }
    return 0;
}
