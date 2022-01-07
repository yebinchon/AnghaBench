
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fileCheck (char const*,int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcmp (char const*,char*) ;

int main(int argCount, const char** argv) {
    int argNb = 1;
    int testCCtxParams = 0;
    if (argCount < 2) {
        fprintf(stderr, "Error : no argument : need input file \n");
        exit(9);
    }

    if (!strcmp(argv[argNb], "--cctxParams")) {
      testCCtxParams = 1;
      argNb++;
    }

    fileCheck(argv[argNb], testCCtxParams);
    fprintf(stderr, "no pb detected\n");
    return 0;
}
