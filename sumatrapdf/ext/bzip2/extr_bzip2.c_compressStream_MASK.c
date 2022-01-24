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
typedef  int /*<<< orphan*/  UInt64 ;
typedef  scalar_t__ UInt32 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  scalar_t__ Int32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  char Char ;
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  BZ_CONFIG_ERROR 130 
#define  BZ_IO_ERROR 129 
#define  BZ_MEM_ERROR 128 
 scalar_t__ BZ_OK ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  blockSize100k ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *) ; 
 double FUNC18 (int /*<<< orphan*/ *) ; 
 int verbosity ; 
 int /*<<< orphan*/  workFactor ; 

__attribute__((used)) static 
void FUNC19 ( FILE *stream, FILE *zStream )
{
   BZFILE* bzf = NULL;
   UChar   ibuf[5000];
   Int32   nIbuf;
   UInt32  nbytes_in_lo32, nbytes_in_hi32;
   UInt32  nbytes_out_lo32, nbytes_out_hi32;
   Int32   bzerr, bzerr_dummy, ret;

   FUNC3(stream);
   FUNC3(zStream);

   if (FUNC7(stream)) goto errhandler_io;
   if (FUNC7(zStream)) goto errhandler_io;

   bzf = FUNC2 ( &bzerr, zStream, 
                           blockSize100k, verbosity, workFactor );   
   if (bzerr != BZ_OK) goto errhandler;

   if (verbosity >= 2) FUNC10 ( stderr, "\n" );

   while (True) {

      if (FUNC13(stream)) break;
      nIbuf = FUNC11 ( ibuf, sizeof(UChar), 5000, stream );
      if (FUNC7(stream)) goto errhandler_io;
      if (nIbuf > 0) FUNC0 ( &bzerr, bzf, (void*)ibuf, nIbuf );
      if (bzerr != BZ_OK) goto errhandler;

   }

   FUNC1 ( &bzerr, bzf, 0, 
                        &nbytes_in_lo32, &nbytes_in_hi32,
                        &nbytes_out_lo32, &nbytes_out_hi32 );
   if (bzerr != BZ_OK) goto errhandler;

   if (FUNC7(zStream)) goto errhandler_io;
   ret = FUNC8 ( zStream );
   if (ret == EOF) goto errhandler_io;
   if (zStream != stdout) {
      Int32 fd = FUNC9 ( zStream );
      if (fd < 0) goto errhandler_io;
      FUNC4 ( fd );
      ret = FUNC6 ( zStream );
      outputHandleJustInCase = NULL;
      if (ret == EOF) goto errhandler_io;
   }
   outputHandleJustInCase = NULL;
   if (FUNC7(stream)) goto errhandler_io;
   ret = FUNC6 ( stream );
   if (ret == EOF) goto errhandler_io;

   if (verbosity >= 1) {
      if (nbytes_in_lo32 == 0 && nbytes_in_hi32 == 0) {
	 FUNC10 ( stderr, " no data compressed.\n");
      } else {
	 Char   buf_nin[32], buf_nout[32];
	 UInt64 nbytes_in,   nbytes_out;
	 double nbytes_in_d, nbytes_out_d;
	 FUNC16 ( &nbytes_in, 
			       nbytes_in_lo32, nbytes_in_hi32 );
	 FUNC16 ( &nbytes_out, 
			       nbytes_out_lo32, nbytes_out_hi32 );
	 nbytes_in_d  = FUNC18 ( &nbytes_in );
	 nbytes_out_d = FUNC18 ( &nbytes_out );
	 FUNC17 ( buf_nin, &nbytes_in );
	 FUNC17 ( buf_nout, &nbytes_out );
	 FUNC10 ( stderr, "%6.3f:1, %6.3f bits/byte, "
		   "%5.2f%% saved, %s in, %s out.\n",
		   nbytes_in_d / nbytes_out_d,
		   (8.0 * nbytes_out_d) / nbytes_in_d,
		   100.0 * (1.0 - nbytes_out_d / nbytes_in_d),
		   buf_nin,
		   buf_nout
		 );
      }
   }

   return;

   errhandler:
   FUNC1 ( &bzerr_dummy, bzf, 1, 
                        &nbytes_in_lo32, &nbytes_in_hi32,
                        &nbytes_out_lo32, &nbytes_out_hi32 );
   switch (bzerr) {
      case BZ_CONFIG_ERROR:
         FUNC5(); break;
      case BZ_MEM_ERROR:
         FUNC14 (); break;
      case BZ_IO_ERROR:
         errhandler_io:
         FUNC12(); break;
      default:
         FUNC15 ( "compress:unexpected error" );
   }

   FUNC15 ( "compress:end" );
   /*notreached*/
}