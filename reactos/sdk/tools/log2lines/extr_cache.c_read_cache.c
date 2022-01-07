
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptail; int phead; } ;
typedef int LIST_MEMBER ;
typedef int FILE ;


 int LINESIZE ;
 TYPE_1__ cache ;
 int * cache_entry_create (char*) ;
 char* cache_name ;
 int entry_insert (TYPE_1__*,int *) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int l2l_dbg (int,char*,char*) ;

int
read_cache(void)
{
    FILE *fr;
    LIST_MEMBER *pentry;
    char Line[LINESIZE + 1];
    int result = 0;

    Line[LINESIZE] = '\0';

    fr = fopen(cache_name, "r");
    if (!fr)
    {
        l2l_dbg(1, "Open %s failed\n", cache_name);
        return 2;
    }
    cache.phead = cache.ptail = ((void*)0);

    while (fgets(Line, LINESIZE, fr) != ((void*)0))
    {
        pentry = cache_entry_create(Line);
        if (!pentry)
        {
            l2l_dbg(2, "** Create entry failed of: %s\n", Line);
        }
        else
            entry_insert(&cache, pentry);
    }

    fclose(fr);
    return result;
}
