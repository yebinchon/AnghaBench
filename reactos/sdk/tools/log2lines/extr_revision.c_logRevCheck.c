
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file2; int file1; scalar_t__ nr2; } ;
typedef int FILE ;


 TYPE_1__ lastLine ;
 int log_rev_check (int *,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
logRevCheck(FILE *outFile)
{
    int twice = 0;

    twice = (lastLine.nr2 && strcmp(lastLine.file1, lastLine.file2) != 0);
    log_rev_check(outFile, lastLine.file1, twice);
    if (twice)
    {
        log_rev_check(outFile, lastLine.file2, twice);
    }
}
