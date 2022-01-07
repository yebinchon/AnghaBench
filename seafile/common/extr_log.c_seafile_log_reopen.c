
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fclose (int *) ;
 int * g_fopen (int ,char*) ;
 int logfile ;
 int * logfp ;
 int seaf_message (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;

int
seafile_log_reopen ()
{
    FILE *fp, *oldfp;

    if (strcmp(logfile, "-") == 0)
        return 0;

    if ((fp = g_fopen (logfile, "a+")) == ((void*)0)) {
        seaf_message ("Failed to open file %s\n", logfile);
        return -1;
    }



    oldfp = logfp;
    logfp = fp;
    if (fclose(oldfp) < 0) {
        seaf_message ("Failed to close file %s\n", logfile);
        return -1;
    }

    return 0;
}
