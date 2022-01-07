
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ valid; } ;
typedef int FILE ;


 TYPE_1__ lastLine ;
 int logSource (int *) ;
 int opt_Source ;

__attribute__((used)) static void
reportSource(FILE *outFile)
{
    if (!opt_Source)
        return;
    if (lastLine.valid)
        logSource(outFile);
}
