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
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int*,int /*<<< orphan*/ *,int,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  BZ_HDR_0 ; 
 int BZ_MAX_UNUSED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static
BZFILE * FUNC9
               ( const char *path,   /* no use when bzdopen */
                 int fd,             /* no use when bzdopen */
                 const char *mode,
                 int open_mode)      /* bzopen: 0, bzdopen:1 */
{
   int    bzerr;
   char   unused[BZ_MAX_UNUSED];
   int    blockSize100k = 9;
   int    writing       = 0;
   char   mode2[10]     = "";
   FILE   *fp           = NULL;
   BZFILE *bzfp         = NULL;
   int    verbosity     = 0;
   int    workFactor    = 30;
   int    smallMode     = 0;
   int    nUnused       = 0; 

   if (mode == NULL) return NULL;
   while (*mode) {
      switch (*mode) {
      case 'r':
         writing = 0; break;
      case 'w':
         writing = 1; break;
      case 's':
         smallMode = 1; break;
      default:
         if (FUNC6((int)(*mode))) {
            blockSize100k = *mode-BZ_HDR_0;
         }
      }
      mode++;
   }
   FUNC7(mode2, writing ? "w" : "r" );
   FUNC7(mode2,"b");   /* binary mode */

   if (open_mode==0) {
      if (path==NULL || FUNC8(path,"")==0) {
        fp = (writing ? stdout : stdin);
        FUNC2(fp);
      } else {
        fp = FUNC5(path,mode2);
      }
   } else {
#ifdef BZ_STRICT_ANSI
      fp = NULL;
#else
      fp = FUNC4(fd,mode2);
#endif
   }
   if (fp == NULL) return NULL;

   if (writing) {
      /* Guard against total chaos and anarchy -- JRS */
      if (blockSize100k < 1) blockSize100k = 1;
      if (blockSize100k > 9) blockSize100k = 9; 
      bzfp = FUNC1(&bzerr,fp,blockSize100k,
                             verbosity,workFactor);
   } else {
      bzfp = FUNC0(&bzerr,fp,verbosity,smallMode,
                            unused,nUnused);
   }
   if (bzfp == NULL) {
      if (fp != stdin && fp != stdout) FUNC3(fp);
      return NULL;
   }
   return bzfp;
}