
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BZFILE ;


 int * BZ2_bzReadOpen (int*,int *,int,int,char*,int) ;
 int * BZ2_bzWriteOpen (int*,int *,int,int,int) ;
 int BZ_HDR_0 ;
 int BZ_MAX_UNUSED ;
 int SET_BINARY_MODE (int *) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fopen (char const*,char*) ;
 int isdigit (int) ;
 int * stdin ;
 int * stdout ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static
BZFILE * bzopen_or_bzdopen
               ( const char *path,
                 int fd,
                 const char *mode,
                 int open_mode)
{
   int bzerr;
   char unused[BZ_MAX_UNUSED];
   int blockSize100k = 9;
   int writing = 0;
   char mode2[10] = "";
   FILE *fp = ((void*)0);
   BZFILE *bzfp = ((void*)0);
   int verbosity = 0;
   int workFactor = 30;
   int smallMode = 0;
   int nUnused = 0;

   if (mode == ((void*)0)) return ((void*)0);
   while (*mode) {
      switch (*mode) {
      case 'r':
         writing = 0; break;
      case 'w':
         writing = 1; break;
      case 's':
         smallMode = 1; break;
      default:
         if (isdigit((int)(*mode))) {
            blockSize100k = *mode-BZ_HDR_0;
         }
      }
      mode++;
   }
   strcat(mode2, writing ? "w" : "r" );
   strcat(mode2,"b");

   if (open_mode==0) {
      if (path==((void*)0) || strcmp(path,"")==0) {
        fp = (writing ? stdout : stdin);
        SET_BINARY_MODE(fp);
      } else {
        fp = fopen(path,mode2);
      }
   } else {



      fp = fdopen(fd,mode2);

   }
   if (fp == ((void*)0)) return ((void*)0);

   if (writing) {

      if (blockSize100k < 1) blockSize100k = 1;
      if (blockSize100k > 9) blockSize100k = 9;
      bzfp = BZ2_bzWriteOpen(&bzerr,fp,blockSize100k,
                             verbosity,workFactor);
   } else {
      bzfp = BZ2_bzReadOpen(&bzerr,fp,verbosity,smallMode,
                            unused,nUnused);
   }
   if (bzfp == ((void*)0)) {
      if (fp != stdin && fp != stdout) fclose(fp);
      return ((void*)0);
   }
   return bzfp;
}
