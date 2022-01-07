
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;




 char* TGZfname (char*) ;
 int TGZnotfound (char*) ;
 int error (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int * gzopen (char*,char*) ;
 int help (int) ;
 char* prog ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int tar (int *,int,int,int,char**) ;

int main(int argc,char **argv)
{
    int action = 129;
    int arg = 1;
    char *TGZfile;
    gzFile *f;

    prog = strrchr(argv[0],'\\');
    if (prog == ((void*)0))
      {
        prog = strrchr(argv[0],'/');
        if (prog == ((void*)0))
          {
            prog = strrchr(argv[0],':');
            if (prog == ((void*)0))
              prog = argv[0];
            else
              prog++;
          }
        else
          prog++;
      }
    else
      prog++;

    if (argc == 1)
      help(0);

    if (strcmp(argv[arg],"-l") == 0)
      {
        action = 128;
        if (argc == ++arg)
          help(0);
      }
    else if (strcmp(argv[arg],"-h") == 0)
      {
        help(0);
      }

    if ((TGZfile = TGZfname(argv[arg])) == ((void*)0))
      TGZnotfound(argv[arg]);

    ++arg;
    if ((action == 128) && (arg != argc))
      help(1);




    switch(action)
      {
      case 128:
      case 129:
        f = gzopen(TGZfile,"rb");
        if (f == ((void*)0))
          {
            fprintf(stderr,"%s: Couldn't gzopen %s\n",prog,TGZfile);
            return 1;
          }
        exit(tar(f, action, arg, argc, argv));
      break;

      default:
        error("Unknown option");
        exit(1);
      }

    return 0;
}
