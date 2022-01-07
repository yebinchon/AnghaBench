
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int atoi (char*) ;
 int esclog (int *,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
handle_switch(FILE *outFile, int *sw, char *arg, char *desc)
{
    int changed =0;
    int x = 0;

    if (arg && (strcmp(arg,"") != 0))
    {
        x = atoi(arg);
        if (x != *sw)
        {
            *sw = x;
            changed = 1;
        }
    }
    if (desc)
    {
        esclog(outFile, "%s is %d (%s)\n", desc, *sw, changed ? "changed":"unchanged");
        if (!arg)
            esclog(outFile, "(readonly)\n");
    }

    return changed;
}
