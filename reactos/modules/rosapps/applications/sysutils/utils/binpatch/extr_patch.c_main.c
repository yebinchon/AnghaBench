
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int applyPatch () ;
 int createPatch () ;
 int m_argc ;
 char** m_argv ;
 int printUsage () ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

int
main(
   int argc,
   char *argv[])
{
   m_argc = argc;
   m_argv = argv;

   if (argc >= 2 && (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0))
   {
      printUsage();
      return 0;
   }
   else if (argc >= 2 && argv[1][0] == '-')
   {
      if (strcmp(argv[1], "-c") == 0)
      {
         return createPatch();
      }
      else if (strcmp(argv[1], "-d") == 0)
      {
         return applyPatch();
      }
      else
      {
         printf("Unknown option: %s\n"
                "Use -h for help.\n",
                argv[1]);
         return -1;
      }
   }

   return applyPatch();
}
