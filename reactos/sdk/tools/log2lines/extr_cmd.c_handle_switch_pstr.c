
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* KDBG_ESC_OFF ;
 int LINESIZE ;
 int esclog (int *,char*,...) ;
 int free (char*) ;
 char* malloc (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
handle_switch_pstr(FILE *outFile, char **psw, char *arg, char *desc)
{
    int changed =0;

    if (arg)
    {
        if (strcmp(arg,"") != 0)
        {
            if (strcmp(arg,KDBG_ESC_OFF) == 0)
            {
                if (*psw)
                    changed = 1;
                free(*psw);
                *psw = ((void*)0);
            }
            else
            {
                if (!*psw)
                {
                    *psw = malloc(LINESIZE);
                    **psw = '\0';
                }

                if (strcmp(arg, *psw) != 0)
                {
                    strcpy(*psw, arg);
                    changed = 1;
                }
            }
        }
    }
    if (desc)
    {
        esclog(outFile, "%s is \"%s\" (%s)\n", desc, *psw, changed ? "changed":"unchanged");
        if (!arg)
            esclog(outFile, "(readonly)\n");
    }

    return changed;
}
