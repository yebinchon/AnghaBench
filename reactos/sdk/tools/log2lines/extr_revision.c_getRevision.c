
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LINESIZE ;
 int PCLOSE (int *) ;
 int * POPEN (char*,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int l2l_dbg (int,char*,char*) ;
 char* opt_SourcesPath ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ sscanf (char*,char*,int*) ;

int
getRevision(char *fileName, int lastChanged)
{
    char s[LINESIZE];
    FILE *psvn;
    int rev = 0;

    if (!fileName)
        fileName = opt_SourcesPath;
    sprintf(s, "svn info %s", fileName);
    if ((psvn = POPEN(s, "r")))
    {
        while (fgets(s, LINESIZE, psvn))
        {
            if (lastChanged)
            {
                if (sscanf(s, "Last Changed Rev: %d", &rev))
                    break;
            }
            else
            {
                if (sscanf(s, "Revision: %d", &rev))
                    break;
            }
        }
    }
    else
        l2l_dbg(1, "Can't popen: \"%s\"\n", s);

    if (psvn)
        PCLOSE(psvn);

    return rev;
}
