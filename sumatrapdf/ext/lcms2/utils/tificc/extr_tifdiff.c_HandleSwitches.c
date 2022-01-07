
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CGATSout ;
 int EOF ;
 int FatalError (char*) ;
 int Help () ;
 int TRUE ;
 void* TiffDiffFilename ;
 int Verbose ;
 int xgetopt (int,char**,char*) ;
 void* xoptarg ;

__attribute__((used)) static
void HandleSwitches(int argc, char *argv[])
{
       int s;

       while ((s=xgetopt(argc,argv,"o:O:hHvVg:G:")) != EOF) {

       switch (s) {


       case 'v':
       case 'V':
            Verbose = TRUE;
            break;

       case 'o':
       case 'O':
           TiffDiffFilename = xoptarg;
           break;


        case 'H':
        case 'h':
            Help();
            break;

        case 'g':
        case 'G':
            CGATSout = xoptarg;
            break;

  default:

       FatalError("Unknown option - run without args to see valid ones");
    }
    }
}
