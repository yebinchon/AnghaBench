
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sigproc_t ;
typedef int FILE ;


 scalar_t__ NcSignal (int ,scalar_t__) ;
 int SIGPIPE ;
 scalar_t__ SIG_IGN ;
 int pclose (int *) ;
 int * stdout ;

__attribute__((used)) static void
ClosePager(FILE *pagerfp)
{




 if ((pagerfp != ((void*)0)) && (pagerfp != stdout)) {



  (void) pclose(pagerfp);



 }
}
