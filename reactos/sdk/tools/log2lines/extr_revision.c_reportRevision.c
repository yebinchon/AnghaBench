
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ valid; } ;
typedef int FILE ;


 TYPE_1__ lastLine ;
 int logRevCheck (int *) ;
 scalar_t__ opt_Revision_check ;

void
reportRevision(FILE *outFile)
{
    if (opt_Revision_check)
    {
        if (lastLine.valid)
            logRevCheck(outFile);
    }
}
