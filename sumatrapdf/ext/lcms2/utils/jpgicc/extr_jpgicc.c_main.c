
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Done () ;
 int HandleSwitches (int,char**) ;
 int Help (int ) ;
 int InitUtils (int *,char*) ;
 int OpenInput (char*) ;
 int OpenOutput (char*) ;
 int TransformImage (int ,int ) ;
 scalar_t__ Verbose ;
 int cInpProf ;
 int cOutProf ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int stdout ;
 int xoptind ;

int main(int argc, char* argv[])
{
    InitUtils(((void*)0), "jpgicc");

    HandleSwitches(argc, argv);

    if ((argc - xoptind) != 2) {
        Help(0);
    }

    OpenInput(argv[xoptind]);
    OpenOutput(argv[xoptind+1]);

    TransformImage(cInpProf, cOutProf);


    if (Verbose) { fprintf(stdout, "\n"); fflush(stdout); }

    Done();

    return 0;
}
