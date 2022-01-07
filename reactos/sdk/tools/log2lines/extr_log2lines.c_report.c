
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int clearLastLine () ;
 int reportRevision (int *) ;
 int reportSource (int *) ;

__attribute__((used)) static void
report(FILE *outFile)
{
    reportRevision(outFile);
    reportSource(outFile);
    clearLastLine();
}
