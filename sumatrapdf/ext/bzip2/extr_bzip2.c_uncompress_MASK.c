#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct MY_STAT {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  IntNative ;
typedef  size_t Int32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Char ;
typedef  void* Bool ;

/* Variables and functions */
 size_t BZ_N_SUFFIX_PAIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* False ; 
 int /*<<< orphan*/  FUNC1 (char*,struct MY_STAT*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  SM_F2F 130 
#define  SM_F2O 129 
#define  SM_I2O 128 
 void* True ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*) ; 
 void* deleteOutputOnInterrupt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 scalar_t__ forceOverwrite ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 char* inName ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keepInputFiles ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ noisy ; 
 scalar_t__ FUNC16 (char*) ; 
 char* outName ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* progName ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int srcMode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 void* FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* unzFailsExist ; 
 int /*<<< orphan*/ * unzSuffix ; 
 int verbosity ; 
 int /*<<< orphan*/ * zSuffix ; 

__attribute__((used)) static 
void FUNC25 ( Char *name )
{
   FILE  *inStr;
   FILE  *outStr;
   Int32 n, i;
   Bool  magicNumberOK;
   Bool  cantGuess;
   struct MY_STAT statBuf;

   deleteOutputOnInterrupt = False;

   if (name == NULL && srcMode != SM_I2O)
      FUNC18 ( "uncompress: bad modes\n" );

   cantGuess = False;
   switch (srcMode) {
      case SM_I2O: 
         FUNC5 ( inName, (Char*)"(stdin)" );
         FUNC5 ( outName, (Char*)"(stdout)" ); 
         break;
      case SM_F2F: 
         FUNC5 ( inName, name );
         FUNC5 ( outName, name );
         for (i = 0; i < BZ_N_SUFFIX_PAIRS; i++)
            if (FUNC15(outName,zSuffix[i],unzSuffix[i]))
               goto zzz; 
         cantGuess = True;
         FUNC22 ( outName, ".out" );
         break;
      case SM_F2O: 
         FUNC5 ( inName, name );
         FUNC5 ( outName, (Char*)"(stdout)" ); 
         break;
   }

   zzz:
   if ( srcMode != SM_I2O && FUNC4 ( inName ) ) {
      if (noisy)
      FUNC13 ( stderr, "%s: There are no files matching `%s'.\n",
                progName, inName );
      FUNC21(1);
      return;
   }
   if ( srcMode != SM_I2O && !FUNC9 ( inName ) ) {
      FUNC13 ( stderr, "%s: Can't open input file %s: %s.\n",
                progName, inName, FUNC23(errno) );
      FUNC21(1);
      return;
   }
   if ( srcMode == SM_F2F || srcMode == SM_F2O ) {
      FUNC1(inName, &statBuf);
      if ( FUNC2(statBuf.st_mode) ) {
         FUNC13( stderr,
                  "%s: Input file %s is a directory.\n",
                  progName,inName);
         FUNC21(1);
         return;
      }
   }
   if ( srcMode == SM_F2F && !forceOverwrite && FUNC16 ( inName )) {
      if (noisy)
      FUNC13 ( stderr, "%s: Input file %s is not a normal file.\n",
                progName, inName );
      FUNC21(1);
      return;
   }
   if ( /* srcMode == SM_F2F implied && */ cantGuess ) {
      if (noisy)
      FUNC13 ( stderr, 
                "%s: Can't guess original name for %s -- using %s\n",
                progName, inName, outName );
      /* just a warning, no return */
   }   
   if ( srcMode == SM_F2F && FUNC9 ( outName ) ) {
      if (forceOverwrite) {
	FUNC19(outName);
      } else {
        FUNC13 ( stderr, "%s: Output file %s already exists.\n",
                  progName, outName );
        FUNC21(1);
        return;
      }
   }
   if ( srcMode == SM_F2F && !forceOverwrite &&
        (n=FUNC6 ( inName ) ) > 0) {
      FUNC13 ( stderr, "%s: Input file %s has %d other link%s.\n",
                progName, inName, n, n > 1 ? "s" : "" );
      FUNC21(1);
      return;
   }

   if ( srcMode == SM_F2F ) {
      /* Save the file's meta-info before we open it.  Doing it later
         means we mess up the access times. */
      FUNC20 ( inName );
   }

   switch ( srcMode ) {

      case SM_I2O:
         inStr = stdin;
         outStr = stdout;
         if ( FUNC14 ( FUNC10 ( stdin ) ) ) {
            FUNC13 ( stderr,
                      "%s: I won't read compressed data from a terminal.\n",
                      progName );
            FUNC13 ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            FUNC21(1);
            return;
         };
         break;

      case SM_F2O:
         inStr = FUNC11 ( inName, "rb" );
         outStr = stdout;
         if ( inStr == NULL ) {
            FUNC13 ( stderr, "%s: Can't open input file %s:%s.\n",
                      progName, inName, FUNC23(errno) );
            if ( inStr != NULL ) FUNC7 ( inStr );
            FUNC21(1);
            return;
         };
         break;

      case SM_F2F:
         inStr = FUNC11 ( inName, "rb" );
         outStr = FUNC12 ( outName, "wb" );
         if ( outStr == NULL) {
            FUNC13 ( stderr, "%s: Can't create output file %s: %s.\n",
                      progName, outName, FUNC23(errno) );
            if ( inStr != NULL ) FUNC7 ( inStr );
            FUNC21(1);
            return;
         }
         if ( inStr == NULL ) {
            FUNC13 ( stderr, "%s: Can't open input file %s: %s.\n",
                      progName, inName, FUNC23(errno) );
            if ( outStr != NULL ) FUNC7 ( outStr );
            FUNC21(1);
            return;
         };
         break;

      default:
         FUNC18 ( "uncompress: bad srcMode" );
         break;
   }

   if (verbosity >= 1) {
      FUNC13 ( stderr, "  %s: ", inName );
      FUNC17 ( inName );
      FUNC8 ( stderr );
   }

   /*--- Now the input and output handles are sane.  Do the Biz. ---*/
   outputHandleJustInCase = outStr;
   deleteOutputOnInterrupt = True;
   magicNumberOK = FUNC24 ( inStr, outStr );
   outputHandleJustInCase = NULL;

   /*--- If there was an I/O error, we won't get here. ---*/
   if ( magicNumberOK ) {
      if ( srcMode == SM_F2F ) {
         FUNC3 ( outName );
         deleteOutputOnInterrupt = False;
         if ( !keepInputFiles ) {
            IntNative retVal = FUNC19 ( inName );
            FUNC0 ( retVal );
         }
      }
   } else {
      unzFailsExist = True;
      deleteOutputOnInterrupt = False;
      if ( srcMode == SM_F2F ) {
         IntNative retVal = FUNC19 ( outName );
         FUNC0 ( retVal );
      }
   }
   deleteOutputOnInterrupt = False;

   if ( magicNumberOK ) {
      if (verbosity >= 1)
         FUNC13 ( stderr, "done\n" );
   } else {
      FUNC21(2);
      if (verbosity >= 1)
         FUNC13 ( stderr, "not a bzip2 file.\n" ); else
         FUNC13 ( stderr,
                   "%s: %s is not a bzip2 file.\n",
                   progName, inName );
   }

}