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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,scalar_t__*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int M_BLOCK ; 
 int M_BLOCK_OUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char** bzerrorstrings ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__* inbuf ; 
 int nIn ; 
 int nOut ; 
 int nZ ; 
 scalar_t__* outbuf ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zbuf ; 

int FUNC7 ( int argc, char** argv )
{
   FILE* f;
   int   r;
   int   bit;
   int   i;

   if (argc != 2) {
      FUNC5 ( stderr, "usage: unzcrash filename\n" );
      return 1;
   }

   f = FUNC4 ( argv[1], "r" );
   if (!f) {
      FUNC5 ( stderr, "unzcrash: can't open %s\n", argv[1] );
      return 1;
   }

   nIn = FUNC6 ( inbuf, 1, M_BLOCK, f );
   FUNC5 ( stderr, "%d bytes read\n", nIn );

   nZ = M_BLOCK;
   r = FUNC0 (
         zbuf, &nZ, inbuf, nIn, 9, 0, 30 );

   FUNC2 (r == BZ_OK);
   FUNC5 ( stderr, "%d after compression\n", nZ );

   for (bit = 0; bit < nZ*8; bit++) {
      FUNC5 ( stderr, "bit %d  ", bit );
      FUNC3 ( bit );
      nOut = M_BLOCK_OUT;
      r = FUNC1 (
            outbuf, &nOut, zbuf, nZ, 0, 0 );
      FUNC5 ( stderr, " %d  %s ", r, bzerrorstrings[-r] );

      if (r != BZ_OK) {
         FUNC5 ( stderr, "\n" );
      } else {
         if (nOut != nIn) {
           FUNC5(stderr, "nIn/nOut mismatch %d %d\n", nIn, nOut );
           return 1;
         } else {
           for (i = 0; i < nOut; i++)
             if (inbuf[i] != outbuf[i]) { 
                FUNC5(stderr, "mismatch at %d\n", i ); 
                return 1; 
           }
           if (i == nOut) FUNC5(stderr, "really ok!\n" );
         }
      }

      FUNC3 ( bit );
   }

#if 0
   assert (nOut == nIn);
   for (i = 0; i < nOut; i++) {
     if (inbuf[i] != outbuf[i]) {
        fprintf ( stderr, "difference at %d !\n", i );
        return 1;
     }
   }
#endif

   FUNC5 ( stderr, "all ok\n" );
   return 0;
}