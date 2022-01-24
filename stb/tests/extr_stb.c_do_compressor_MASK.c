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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned int FUNC8 (char*,char*,unsigned int) ; 
 char* FUNC9 (char*,unsigned int*) ; 
 char* FUNC10 (char*,size_t*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC11(int argc,char**argv)
{
   char *p;
   size_t slen;
   unsigned int len;

   int window;
   if (argc == 2) {
      p = FUNC10(argv[1], &slen);
      len = (unsigned int) slen;
      if (p) {
         unsigned int dlen, clen = FUNC8("data/dummy.bin", p, len);
         char *q = FUNC9("data/dummy.bin", &dlen);

         if (len != dlen) {
            FUNC6("FAILED %d -> %d\n", len, clen);
         } else {
            int z = FUNC5(q,p,dlen);
            if (z != 0) 
               FUNC6("FAILED %d -> %d\n", len, clen);
            else
               FUNC6("%d -> %d\n", len, clen);
         }
      }
      return;
   }

   window = FUNC0(argv[1]);
   if (window && argc == 4) {
      p = FUNC10(argv[3], &slen);
      len = (int) slen;
      if (p) {
         FUNC7(window);
         FUNC8(argv[2], p, len);
      }
   } else if (argc == 3) {
      p = FUNC9(argv[2], &len);
      if (p) {
         FILE *f = FUNC2(argv[1], "wb");
         FUNC4(p,1,len,f);
         FUNC1(f);
      } else {
         FUNC3(stderr, "FAILED.\n");
      }
   } else {
      FUNC3(stderr, "Usage: stb <hashsize> <output> <filetocompress>\n"
                      "   or  stb            <output> <filetodecompress>\n");
   }
}