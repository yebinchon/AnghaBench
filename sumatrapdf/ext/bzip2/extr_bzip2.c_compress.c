
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MY_STAT {int st_mode; } ;
typedef int IntNative ;
typedef size_t Int32 ;
typedef int FILE ;
typedef int Char ;


 size_t BZ_N_SUFFIX_PAIRS ;
 int ERROR_IF_NOT_ZERO (int ) ;
 int False ;
 int MY_STAT (char*,struct MY_STAT*) ;
 scalar_t__ MY_S_ISDIR (int ) ;



 int True ;
 int applySavedTimeInfoToOutputFile (char*) ;
 int compressStream (int *,int *) ;
 scalar_t__ containsDubiousChars (char*) ;
 int copyFileName (char*,int *) ;
 size_t countHardLinks (char*) ;
 int deleteOutputOnInterrupt ;
 int errno ;
 int fclose (int *) ;
 int fflush (int ) ;
 scalar_t__ fileExists (char*) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int * fopen_output_safely (char*,char*) ;
 scalar_t__ forceOverwrite ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ hasSuffix (char*,char*) ;
 char* inName ;
 int isatty (int ) ;
 int keepInputFiles ;
 scalar_t__ noisy ;
 scalar_t__ notAStandardFile (char*) ;
 char* outName ;
 int * outputHandleJustInCase ;
 int pad (char*) ;
 int panic (char*) ;
 char* progName ;
 int remove (char*) ;
 int saveInputFileMetaInfo (char*) ;
 int setExit (int) ;
 int srcMode ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int strcat (char*,char*) ;
 char* strerror (int ) ;
 int verbosity ;
 char** zSuffix ;

__attribute__((used)) static
void compress ( Char *name )
{
   FILE *inStr;
   FILE *outStr;
   Int32 n, i;
   struct MY_STAT statBuf;

   deleteOutputOnInterrupt = False;

   if (name == ((void*)0) && srcMode != 128)
      panic ( "compress: bad modes\n" );

   switch (srcMode) {
      case 128:
         copyFileName ( inName, (Char*)"(stdin)" );
         copyFileName ( outName, (Char*)"(stdout)" );
         break;
      case 130:
         copyFileName ( inName, name );
         copyFileName ( outName, name );
         strcat ( outName, ".bz2" );
         break;
      case 129:
         copyFileName ( inName, name );
         copyFileName ( outName, (Char*)"(stdout)" );
         break;
   }

   if ( srcMode != 128 && containsDubiousChars ( inName ) ) {
      if (noisy)
      fprintf ( stderr, "%s: There are no files matching `%s'.\n",
                progName, inName );
      setExit(1);
      return;
   }
   if ( srcMode != 128 && !fileExists ( inName ) ) {
      fprintf ( stderr, "%s: Can't open input file %s: %s.\n",
                progName, inName, strerror(errno) );
      setExit(1);
      return;
   }
   for (i = 0; i < BZ_N_SUFFIX_PAIRS; i++) {
      if (hasSuffix(inName, zSuffix[i])) {
         if (noisy)
         fprintf ( stderr,
                   "%s: Input file %s already has %s suffix.\n",
                   progName, inName, zSuffix[i] );
         setExit(1);
         return;
      }
   }
   if ( srcMode == 130 || srcMode == 129 ) {
      MY_STAT(inName, &statBuf);
      if ( MY_S_ISDIR(statBuf.st_mode) ) {
         fprintf( stderr,
                  "%s: Input file %s is a directory.\n",
                  progName,inName);
         setExit(1);
         return;
      }
   }
   if ( srcMode == 130 && !forceOverwrite && notAStandardFile ( inName )) {
      if (noisy)
      fprintf ( stderr, "%s: Input file %s is not a normal file.\n",
                progName, inName );
      setExit(1);
      return;
   }
   if ( srcMode == 130 && fileExists ( outName ) ) {
      if (forceOverwrite) {
  remove(outName);
      } else {
  fprintf ( stderr, "%s: Output file %s already exists.\n",
     progName, outName );
  setExit(1);
  return;
      }
   }
   if ( srcMode == 130 && !forceOverwrite &&
        (n=countHardLinks ( inName )) > 0) {
      fprintf ( stderr, "%s: Input file %s has %d other link%s.\n",
                progName, inName, n, n > 1 ? "s" : "" );
      setExit(1);
      return;
   }

   if ( srcMode == 130 ) {


      saveInputFileMetaInfo ( inName );
   }

   switch ( srcMode ) {

      case 128:
         inStr = stdin;
         outStr = stdout;
         if ( isatty ( fileno ( stdout ) ) ) {
            fprintf ( stderr,
                      "%s: I won't write compressed data to a terminal.\n",
                      progName );
            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            setExit(1);
            return;
         };
         break;

      case 129:
         inStr = fopen ( inName, "rb" );
         outStr = stdout;
         if ( isatty ( fileno ( stdout ) ) ) {
            fprintf ( stderr,
                      "%s: I won't write compressed data to a terminal.\n",
                      progName );
            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            if ( inStr != ((void*)0) ) fclose ( inStr );
            setExit(1);
            return;
         };
         if ( inStr == ((void*)0) ) {
            fprintf ( stderr, "%s: Can't open input file %s: %s.\n",
                      progName, inName, strerror(errno) );
            setExit(1);
            return;
         };
         break;

      case 130:
         inStr = fopen ( inName, "rb" );
         outStr = fopen_output_safely ( outName, "wb" );
         if ( outStr == ((void*)0)) {
            fprintf ( stderr, "%s: Can't create output file %s: %s.\n",
                      progName, outName, strerror(errno) );
            if ( inStr != ((void*)0) ) fclose ( inStr );
            setExit(1);
            return;
         }
         if ( inStr == ((void*)0) ) {
            fprintf ( stderr, "%s: Can't open input file %s: %s.\n",
                      progName, inName, strerror(errno) );
            if ( outStr != ((void*)0) ) fclose ( outStr );
            setExit(1);
            return;
         };
         break;

      default:
         panic ( "compress: bad srcMode" );
         break;
   }

   if (verbosity >= 1) {
      fprintf ( stderr, "  %s: ", inName );
      pad ( inName );
      fflush ( stderr );
   }


   outputHandleJustInCase = outStr;
   deleteOutputOnInterrupt = True;
   compressStream ( inStr, outStr );
   outputHandleJustInCase = ((void*)0);


   if ( srcMode == 130 ) {
      applySavedTimeInfoToOutputFile ( outName );
      deleteOutputOnInterrupt = False;
      if ( !keepInputFiles ) {
         IntNative retVal = remove ( inName );
         ERROR_IF_NOT_ZERO ( retVal );
      }
   }

   deleteOutputOnInterrupt = False;
}
