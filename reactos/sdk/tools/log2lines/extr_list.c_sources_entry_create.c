
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buf; char* name; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef scalar_t__ PLIST ;
typedef int LIST_MEMBER ;


 TYPE_1__* entry_delete (TYPE_1__*) ;
 int entry_insert (scalar_t__,TYPE_1__*) ;
 scalar_t__ entry_lookup (scalar_t__,char*) ;
 int l2l_dbg (int,char*,...) ;
 void* malloc (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

PLIST_MEMBER
sources_entry_create(PLIST list, char *path, char *prefix)
{
    PLIST_MEMBER pentry;
    char *s = ((void*)0);
    int l;

    if (!path)
        return ((void*)0);
    if (!prefix)
        prefix = "";

    pentry = malloc(sizeof(LIST_MEMBER));
    if (!pentry)
        return ((void*)0);

    l = strlen(path) + strlen(prefix);
    pentry->buf = s = malloc(l + 1);
    if (!s)
    {
        l2l_dbg(1, "Alloc entry failed\n");
        return entry_delete(pentry);
    }

    strcpy(s, prefix);
    strcat(s, path);
    if (s[l] == '\n')
        s[l] = '\0';

    pentry->name = s;
    if (list)
    {
        if (entry_lookup(list, pentry->name))
        {
            l2l_dbg(1, "Entry %s exists\n", pentry->name);
            pentry = entry_delete(pentry);
        }
        else
        {
            l2l_dbg(1, "Inserting entry %s\n", pentry->name);
            entry_insert(list, pentry);
        }
    }

    return pentry;
}
