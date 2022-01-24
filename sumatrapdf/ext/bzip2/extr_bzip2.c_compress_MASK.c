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

/* Variables and functions */
 size_t BZ_N_SUFFIX_PAIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC1 (char*,struct MY_STAT*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  SM_F2F 130 
#define  SM_F2O 129 
#define  SM_I2O 128 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  deleteOutputOnInterrupt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 scalar_t__ forceOverwrite ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 char* inName ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keepInputFiles ; 
 scalar_t__ noisy ; 
 scalar_t__ FUNC17 (char*) ; 
 char* outName ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* progName ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int srcMode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 
 int verbosity ; 
 char** zSuffix ; 

__attribute__((used)) static 
void FUNC25 ( Char *name )
{
   FILE  *inStr;
   FILE  *outStr;
   Int32 n, i;
   struct MY_STAT statBuf;

   deleteOutputOnInterrupt = False;

   if (name == NULL && srcMode != SM_I2O)
      FUNC19 ( "compress: bad modes\n" );

   switch (srcMode) {
      case SM_I2O: 
         FUNC6 ( inName, (Char*)"(stdin)" );
         FUNC6 ( outName, (Char*)"(stdout)" ); 
         break;
      case SM_F2F: 
         FUNC6 ( inName, name );
         FUNC6 ( outName, name );
         FUNC23 ( outName, ".bz2" ); 
         break;
      case SM_F2O: 
         FUNC6 ( inName, name );
         FUNC6 ( outName, (Char*)"(stdout)" ); 
         break;
   }

   if ( srcMode != SM_I2O && FUNC5 ( inName ) ) {
      if (noisy)
      FUNC14 ( stderr, "%s: There are no files matching `%s'.\n",
                progName, inName );
      FUNC22(1);
      return;
   }
   if ( srcMode != SM_I2O && !FUNC10 ( inName ) ) {
      FUNC14 ( stderr, "%s: Can't open input file %s: %s.\n",
                progName, inName, FUNC24(errno) );
      FUNC22(1);
      return;
   }
   for (i = 0; i < BZ_N_SUFFIX_PAIRS; i++) {
      if (FUNC15(inName, zSuffix[i])) {
         if (noisy)
         FUNC14 ( stderr, 
                   "%s: Input file %s already has %s suffix.\n",
                   progName, inName, zSuffix[i] );
         FUNC22(1);
         return;
      }
   }
   if ( srcMode == SM_F2F || srcMode == SM_F2O ) {
      FUNC1(inName, &statBuf);
      if ( FUNC2(statBuf.st_mode) ) {
         FUNC14( stderr,
                  "%s: Input file %s is a directory.\n",
                  progName,inName);
         FUNC22(1);
         return;
      }
   }
   if ( srcMode == SM_F2F && !forceOverwrite && FUNC17 ( inName )) {
      if (noisy)
      FUNC14 ( stderr, "%s: Input file %s is not a normal file.\n",
                progName, inName );
      FUNC22(1);
      return;
   }
   if ( srcMode == SM_F2F && FUNC10 ( outName ) ) {
      if (forceOverwrite) {
	 FUNC20(outName);
      } else {
	 FUNC14 ( stderr, "%s: Output file %s already exists.\n",
		   progName, outName );
	 FUNC22(1);
	 return;
      }
   }
   if ( srcMode == SM_F2F && !forceOverwrite &&
        (n=FUNC7 ( inName )) > 0) {
      FUNC14 ( stderr, "%s: Input file %s has %d other link%s.\n",
                progName, inName, n, n > 1 ? "s" : "" );
      FUNC22(1);
      return;
   }

   if ( srcMode == SM_F2F ) {
      /* Save the file's meta-info before we open it.  Doing it later
         means we mess up the access times. */
      FUNC21 ( inName );
   }

   switch ( srcMode ) {

      case SM_I2O:
         inStr = stdin;
         outStr = stdout;
         if ( FUNC16 ( FUNC11 ( stdout ) ) ) {
            FUNC14 ( stderr,
                      "%s: I won't write compressed data to a terminal.\n",
                      progName );
            FUNC14 ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            FUNC22(1);
            return;
         };
         break;

      case SM_F2O:
         inStr = FUNC12 ( inName, "rb" );
         outStr = stdout;
         if ( FUNC16 ( FUNC11 ( stdout ) ) ) {
            FUNC14 ( stderr,
                      "%s: I won't write compressed data to a terminal.\n",
                      progName );
            FUNC14 ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            if ( inStr != NULL ) FUNC8 ( inStr );
            FUNC22(1);
            return;
         };
         if ( inStr == NULL ) {
            FUNC14 ( stderr, "%s: Can't open input file %s: %s.\n",
                      progName, inName, FUNC24(errno) );
            FUNC22(1);
            return;
         };
         break;

      case SM_F2F:
         inStr = FUNC12 ( inName, "rb" );
         outStr = FUNC13 ( outName, "wb" );
         if ( outStr == NULL) {
            FUNC14 ( stderr, "%s: Can't create output file %s: %s.\n",
                      progName, outName, FUNC24(errno) );
            if ( inStr != NULL ) FUNC8 ( inStr );
            FUNC22(1);
            return;
         }
         if ( inStr == NULL ) {
            FUNC14 ( stderr, "%s: Can't open input file %s: %s.\n",
                      progName, inName, FUNC24(errno) );
            if ( outStr != NULL ) FUNC8 ( outStr );
            FUNC22(1);
            return;
         };
         break;

      default:
         FUNC19 ( "compress: bad srcMode" );
         break;
   }

   if (verbosity >= 1) {
      FUNC14 ( stderr,  "  %s: ", inName );
      FUNC18 ( inName );
      FUNC9 ( stderr );
   }

   /*--- Now the input and output handles are sane.  Do the Biz. ---*/
   outputHandleJustInCase = outStr;
   deleteOutputOnInterrupt = True;
   FUNC4 ( inStr, outStr );
   outputHandleJustInCase = NULL;

   /*--- If there was an I/O error, we won't get here. ---*/
   if ( srcMode == SM_F2F ) {
      FUNC3 ( outName );
      deleteOutputOnInterrupt = False;
      if ( !keepInputFiles ) {
         IntNative retVal = FUNC20 ( inName );
         FUNC0 ( retVal );
      }
   }

   deleteOutputOnInterrupt = False;
}