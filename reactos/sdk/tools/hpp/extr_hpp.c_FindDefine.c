
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cchName; struct TYPE_4__* pNext; int pszName; } ;
typedef TYPE_1__* PDEFINE ;


 TYPE_1__* gpDefines ;
 scalar_t__ strncmp (char const*,int ,int) ;
 int strxlen (char const*) ;
 int trace (char*,int ) ;

PDEFINE
FindDefine(const char *p, char **pNext)
{
    PDEFINE pDefine;
    int cchName;

    cchName = strxlen(p);
    if (pNext)
        *pNext = (char*)p + cchName;


    pDefine = gpDefines;
    while (pDefine != 0)
    {
        trace("found a define: %s\n", pDefine->pszName);
        if (pDefine->cchName == cchName)
        {
            if (strncmp(p, pDefine->pszName, cchName) == 0)
            {
                return pDefine;
            }
        }
        pDefine = pDefine->pNext;
    }
    return 0;
}
