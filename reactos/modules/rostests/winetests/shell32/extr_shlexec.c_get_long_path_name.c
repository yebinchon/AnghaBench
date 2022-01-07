
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAA ;
typedef scalar_t__ HANDLE ;
typedef size_t DWORD ;


 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (char*,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int lstrcpynA (char*,char const*,size_t) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static DWORD get_long_path_name(const char* shortpath, char* longpath, DWORD longlen)
{
    char tmplongpath[MAX_PATH];
    const char* p;
    DWORD sp = 0, lp = 0;
    DWORD tmplen;
    WIN32_FIND_DATAA wfd;
    HANDLE goit;

    if (!shortpath || !shortpath[0])
        return 0;

    if (shortpath[1] == ':')
    {
        tmplongpath[0] = shortpath[0];
        tmplongpath[1] = ':';
        lp = sp = 2;
    }

    while (shortpath[sp])
    {

        if (shortpath[sp] == '\\' || shortpath[sp] == '/')
        {
            if (!lp || tmplongpath[lp-1] != '\\')
            {

                tmplongpath[lp++] = '\\';
            }
            tmplongpath[lp] = 0;
            sp++;
            continue;
        }

        p = shortpath + sp;
        if (sp == 0 && p[0] == '.' && (p[1] == '/' || p[1] == '\\'))
        {
            tmplongpath[lp++] = *p++;
            tmplongpath[lp++] = *p++;
        }
        for (; *p && *p != '/' && *p != '\\'; p++);
        tmplen = p - (shortpath + sp);
        lstrcpynA(tmplongpath + lp, shortpath + sp, tmplen + 1);

        goit = FindFirstFileA(tmplongpath, &wfd);
        if (goit == INVALID_HANDLE_VALUE)
            return 0;
        FindClose(goit);
        strcpy(tmplongpath + lp, wfd.cFileName);
        lp += strlen(tmplongpath + lp);
        sp += tmplen;
    }
    tmplen = strlen(shortpath) - 1;
    if ((shortpath[tmplen] == '/' || shortpath[tmplen] == '\\') &&
        (tmplongpath[lp - 1] != '/' && tmplongpath[lp - 1] != '\\'))
        tmplongpath[lp++] = shortpath[tmplen];
    tmplongpath[lp] = 0;

    tmplen = strlen(tmplongpath) + 1;
    if (tmplen <= longlen)
    {
        strcpy(longpath, tmplongpath);
        tmplen--;
    }

    return tmplen;
}
