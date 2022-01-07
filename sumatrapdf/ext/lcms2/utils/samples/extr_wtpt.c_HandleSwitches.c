
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int FALSE ;
 int FatalError (char*) ;
 void* TRUE ;
 void* lShowLCh ;
 void* lShowLab ;
 int lShowXYZ ;
 int xgetopt (int,char**,char*) ;

__attribute__((used)) static
void HandleSwitches(int argc, char *argv[])
{
       int s;

       while ((s = xgetopt(argc, argv, "lcx")) != EOF) {

              switch (s){


              case 'l':
                     lShowLab = TRUE;
                     break;

              case 'c':
                     lShowLCh = TRUE;
                     break;

              case 'x':
                     lShowXYZ = FALSE;
                     break;

              default:

                     FatalError("Unknown option - run without args to see valid ones.\n");
              }
       }
}
