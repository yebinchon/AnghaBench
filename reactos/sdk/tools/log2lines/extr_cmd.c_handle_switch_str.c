
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* KDBG_ESC_OFF ;
 int esclog (int *,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
handle_switch_str(FILE *outFile, char *sw, char *arg, char *desc)
{
    int changed =0;

    if (arg)
    {
        if (strcmp(arg,"") != 0)
        {
            if (strcmp(arg,KDBG_ESC_OFF) == 0)
            {
                if (*sw)
                    changed = 1;
                *sw = '\0';
            }
            else if (strcmp(arg, sw) != 0)
            {
                strcpy(sw, arg);
                changed = 1;
            }
        }
    }
    if (desc)
    {
        esclog(outFile, "%s is \"%s\" (%s)\n", desc, sw, changed ? "changed":"unchanged");
        if (!arg)
            esclog(outFile, "(readonly)\n");
    }

    return changed;
}
