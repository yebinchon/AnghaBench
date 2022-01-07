
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DbgHelpStringTab {unsigned int Length; char*** Table; int Bytes; } ;


 unsigned int ComputeDJBHash (char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char** realloc (char**,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
DbgHelpAddStringToTable(struct DbgHelpStringTab *tab, char *name)
{
    unsigned int bucket = ComputeDJBHash(name) % tab->Length;
    char **tabEnt = tab->Table[bucket];
    int i;
    char **newBucket;

    if (tabEnt)
    {
        for (i = 0; tabEnt[i] && strcmp(tabEnt[i], name); i++);
        if (tabEnt[i])
        {
            free(name);
            return (i << 10) | bucket;
        }
    }
    else
        i = 0;


    tab->Bytes += strlen(name) + 1;

    newBucket = realloc(tab->Table[bucket], (i+2) * sizeof(char *));

    if (!newBucket)
    {
        fprintf(stderr, "realloc failed!\n");
        return -1;
    }

    tab->Table[bucket] = newBucket;
    tab->Table[bucket][i+1] = 0;
    tab->Table[bucket][i] = name;
    return (i << 10) | bucket;
}
