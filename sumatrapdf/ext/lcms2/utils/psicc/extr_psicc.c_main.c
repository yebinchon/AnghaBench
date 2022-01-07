
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsContext ;


 int GenerateCRD (int *) ;
 int GenerateCSA (int *) ;
 int HandleSwitches (int,char**) ;
 int Help () ;
 int InitUtils (int *,char*) ;
 int OutFile ;
 int * cInProf ;
 int * cOutProf ;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int stdout ;
 int xoptind ;

int main(int argc, char *argv[])
{
 int nargs;
    cmsContext ContextID = ((void*)0);


 InitUtils(((void*)0), "psicc");

  HandleSwitches(argc, argv);

     nargs = (argc - xoptind);
  if (nargs != 0 && nargs != 1)
    Help();

    if (cInProf == ((void*)0) && cOutProf == ((void*)0))
        Help();

  if (nargs == 0)
   OutFile = stdout;
  else
   OutFile = fopen(argv[xoptind], "wt");

   if (cInProf != ((void*)0))
   GenerateCSA(ContextID);

   if (cOutProf != ((void*)0))
   GenerateCRD(ContextID);

   if (nargs == 1) {
    fclose(OutFile);
   }

      return 0;
}
