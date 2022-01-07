
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pszValue; int cchValue; } ;
typedef TYPE_1__* PDEFINE ;
typedef int FILE ;


 TYPE_1__* FindDefine (char*,char**) ;
 int error (char*,int,char*) ;
 int fwrite (char*,int,int,int *) ;
 char* strchr (char*,char) ;
 int strxlen (char*) ;

void
WriteLine(char *pchLine, FILE *fileOut)
{
    char *pch, *pchLineEnd, *pchVariable;
    int len;
    PDEFINE pDefine;

    pchLineEnd = strchr(pchLine, '\n');
    if (pchLineEnd == 0)
        return;

    len = pchLineEnd - pchLine + 1;

    pch = pchLine;
    while (len > 0)
    {

        pchVariable = strchr(pch, '$');
        if (pchVariable && (pchVariable < pchLineEnd))
        {

            fwrite(pch, 1, pchVariable - pch, fileOut);


            pDefine = FindDefine(pchVariable + 1, &pch);
            if (pDefine != 0)
            {

                fwrite(pDefine->pszValue, 1, pDefine->cchValue, fileOut);
            }
            else
            {
                len = strxlen(pchVariable + 1) + 1;
                error("Could not find variable '%.*s'\n", len, pchVariable);
                fwrite(pchVariable, 1, pch - pchVariable, fileOut);
            }

            len = pchLineEnd - pch + 1;
        }
        else
        {
            fwrite(pch, 1, len, fileOut);
            break;
        }
    }
}
