
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UChar ;
typedef size_t Int32 ;
typedef int FILE ;
typedef scalar_t__ Bool ;
typedef int BZFILE ;


 int BZ2_bzRead (size_t*,int *,int *,int) ;
 int BZ2_bzReadClose (size_t*,int *) ;
 int BZ2_bzReadGetUnused (size_t*,int *,void**,size_t*) ;
 int * BZ2_bzReadOpen (size_t*,int *,int,int,int *,size_t) ;




 int BZ_MAX_UNUSED ;

 size_t BZ_OK ;
 size_t BZ_STREAM_END ;

 size_t EOF ;
 scalar_t__ False ;
 int SET_BINARY_MODE (int *) ;
 scalar_t__ True ;
 int configError () ;
 size_t fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*,...) ;
 char* inName ;
 int ioError () ;
 scalar_t__ myfeof (int *) ;
 int noisy ;
 int outOfMemory () ;
 int panic (char*) ;
 char* progName ;
 scalar_t__ smallMode ;
 int stderr ;
 int * stdin ;
 int verbosity ;

__attribute__((used)) static
Bool testStream ( FILE *zStream )
{
   BZFILE* bzf = ((void*)0);
   Int32 bzerr, bzerr_dummy, ret, streamNo, i;
   UChar obuf[5000];
   UChar unused[BZ_MAX_UNUSED];
   Int32 nUnused;
   void* unusedTmpV;
   UChar* unusedTmp;

   nUnused = 0;
   streamNo = 0;

   SET_BINARY_MODE(zStream);
   if (ferror(zStream)) goto errhandler_io;

   while (True) {

      bzf = BZ2_bzReadOpen (
               &bzerr, zStream, verbosity,
               (int)smallMode, unused, nUnused
            );
      if (bzf == ((void*)0) || bzerr != BZ_OK) goto errhandler;
      streamNo++;

      while (bzerr == BZ_OK) {
         BZ2_bzRead ( &bzerr, bzf, obuf, 5000 );
         if (bzerr == 131) goto errhandler;
      }
      if (bzerr != BZ_STREAM_END) goto errhandler;

      BZ2_bzReadGetUnused ( &bzerr, bzf, &unusedTmpV, &nUnused );
      if (bzerr != BZ_OK) panic ( "test:bzReadGetUnused" );

      unusedTmp = (UChar*)unusedTmpV;
      for (i = 0; i < nUnused; i++) unused[i] = unusedTmp[i];

      BZ2_bzReadClose ( &bzerr, bzf );
      if (bzerr != BZ_OK) panic ( "test:bzReadGetUnused" );
      if (nUnused == 0 && myfeof(zStream)) break;

   }

   if (ferror(zStream)) goto errhandler_io;
   ret = fclose ( zStream );
   if (ret == EOF) goto errhandler_io;

   if (verbosity >= 2) fprintf ( stderr, "\n    " );
   return True;

   errhandler:
   BZ2_bzReadClose ( &bzerr_dummy, bzf );
   if (verbosity == 0)
      fprintf ( stderr, "%s: %s: ", progName, inName );
   switch (bzerr) {
      case 133:
         configError(); break;
      case 130:
         errhandler_io:
         ioError(); break;
      case 132:
         fprintf ( stderr,
                   "data integrity (CRC) error in data\n" );
         return False;
      case 129:
         outOfMemory();
      case 128:
         fprintf ( stderr,
                   "file ends unexpectedly\n" );
         return False;
      case 131:
         if (zStream != stdin) fclose(zStream);
         if (streamNo == 1) {
          fprintf ( stderr,
                    "bad magic number (file not created by bzip2)\n" );
            return False;
         } else {
            if (noisy)
            fprintf ( stderr,
                      "trailing garbage after EOF ignored\n" );
            return True;
         }
      default:
         panic ( "test:unexpected error" );
   }

   panic ( "test:end" );
   return True;
}
