
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (scalar_t__*,char*) ;
 int l2l_dbg (int,char*,scalar_t__*,...) ;
 int opt_buffered ;
 scalar_t__* opt_logFile ;
 char* opt_mod ;
 int setbuf (int *,int *) ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 int strerror (int ) ;

int
set_LogFile(FILE **plogFile)
{
    if (*opt_logFile)
    {
        if (*plogFile)
            fclose(*plogFile);
        *plogFile = ((void*)0);

        if (strcmp(opt_logFile,"none") == 0)
            return 0;

        *plogFile = fopen(opt_logFile, opt_mod ? opt_mod : "a");
        if (*plogFile)
        {

            if (!opt_buffered)
            {
                l2l_dbg(1, "Disabling log buffering on %s\n", opt_logFile);
                setbuf(*plogFile, ((void*)0));
            }
            else
                l2l_dbg(1, "Enabling log buffering on %s\n", opt_logFile);
        }
        else
        {
            l2l_dbg(0, "Could not open logfile %s (%s)\n", opt_logFile, strerror(errno));
            return 2;
        }
    }
    return 0;
}
