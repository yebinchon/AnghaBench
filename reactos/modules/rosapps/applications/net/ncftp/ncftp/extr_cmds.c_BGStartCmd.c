
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int RunBatch (int ,int *) ;
 scalar_t__ SpoolCheck () ;
 int atoi (char const*) ;
 int gConn ;
 char* gOurDirectoryPath ;
 int gUnusedArg ;
 int printf (char*,...) ;

void
BGStartCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i, n;

 ARGSUSED(gUnusedArg);
 if (SpoolCheck() < 0)
  return;

 if ((argc < 2) || ((n = atoi(argv[1])) < 2)) {
  RunBatch(0, &gConn);
  (void) printf("Background process started.\n");


  (void) printf("Watch the \"%s/batchlog\" file to see how it is progressing.\n", gOurDirectoryPath);

 } else {
  for (i=0; i<n; i++)
   RunBatch(0, &gConn);
  (void) printf("Background processes started.\n");


  (void) printf("Watch the \"%s/batchlog\" file to see how it is progressing.\n", gOurDirectoryPath);

 }
}
