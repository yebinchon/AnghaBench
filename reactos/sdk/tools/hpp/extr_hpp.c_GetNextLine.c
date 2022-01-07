
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char*
GetNextLine(char *pszLine)
{

    while (*pszLine != 13 && *pszLine != 10 && *pszLine != 0) pszLine++;


    if (pszLine[0] == 13 && pszLine[1] == 10)
        pszLine += 2;
    else if (pszLine[0] == 13 || pszLine[0] == 10)
        pszLine++;

    if (*pszLine == 0)
    {
        return 0;
    }

    return pszLine;
}
