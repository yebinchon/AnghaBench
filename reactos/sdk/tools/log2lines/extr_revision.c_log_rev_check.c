
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rev; int buildrev; scalar_t__ opt_verbose; } ;
struct TYPE_3__ {int revconflicts; } ;
typedef int FILE ;


 int LINESIZE ;
 int getRevision (char*,int) ;
 int log (int *,char*,char*,int,...) ;
 scalar_t__ opt_Revision_check ;
 int opt_SourcesPath ;
 TYPE_2__ revinfo ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 TYPE_1__ summ ;

__attribute__((used)) static void
log_rev_check(FILE *outFile, char *fileName, int showfile)
{
    int rev = 0;
    char s[LINESIZE];

    strcpy(s, opt_SourcesPath);
    strcat(s, fileName);
    rev = getRevision(s, 1);
    if (!showfile)
        s[0] = '\0';
    if (revinfo.opt_verbose)
        log(outFile, "| R--- %s Last Changed Rev: %d\n", s, rev);

    if (rev && opt_Revision_check)
    {
        if (revinfo.rev < revinfo.buildrev)
        {
            summ.revconflicts++;
            log(outFile, "| R--- Conflict %s: source tree(%d) < build(%d)\n", s, rev, revinfo.buildrev);
        }
        else if (rev > revinfo.buildrev)
        {
            summ.revconflicts++;
            log(outFile, "| R--- Conflict %s: file(%d) > build(%d)\n", s, rev, revinfo.buildrev);
        }
    }
}
