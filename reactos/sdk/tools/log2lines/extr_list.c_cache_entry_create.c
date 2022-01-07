
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* buf; char* name; char* path; scalar_t__ Size; int RelBase; int ImageBase; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef int LIST_MEMBER ;


 int INVALID_BASE ;
 TYPE_1__* entry_delete (TYPE_1__*) ;
 int l2l_dbg (int,char*) ;
 void* malloc (int) ;
 int sscanf (char*,char*,unsigned int*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

PLIST_MEMBER
cache_entry_create(char *Line)
{
    PLIST_MEMBER pentry;
    char *s = ((void*)0);
    int l;

    if (!Line)
        return ((void*)0);

    pentry = malloc(sizeof(LIST_MEMBER));
    if (!pentry)
        return ((void*)0);

    l = strlen(Line);
    pentry->buf = s = malloc(l + 1);
    if (!s)
    {
        l2l_dbg(1, "Alloc entry failed\n");
        return entry_delete(pentry);
    }

    strcpy(s, Line);
    if (s[l] == '\n')
        s[l] = '\0';

    pentry->name = s;
    s = strchr(s, '|');
    if (!s)
    {
        l2l_dbg(1, "Name field missing\n");
        return entry_delete(pentry);
    }
    *s++ = '\0';

    pentry->path = s;
    s = strchr(s, '|');
    if (!s)
    {
        l2l_dbg(1, "Path field missing\n");
        return entry_delete(pentry);
    }
    *s++ = '\0';
    if (1 != sscanf(s, "%x", (unsigned int *)(&pentry->ImageBase)))
    {
        l2l_dbg(1, "ImageBase field missing\n");
        return entry_delete(pentry);
    }
    pentry->RelBase = INVALID_BASE;
    pentry->Size = 0;
    return pentry;
}
