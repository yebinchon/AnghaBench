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
typedef  int /*<<< orphan*/  raw_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(char *src, char *dest)
{
   char raw_buffer[1024];
   char *buffer;
   int buf_size = 65536;

   FILE *f, *g;

   // if file already exists at destination, do nothing
   if (FUNC7(src, dest)) return 1;

   // open file
   f = FUNC6(src, "rb");
   if (f == NULL) return 0;

   // open file for writing
   g = FUNC6(dest, "wb");
   if (g == NULL) {
      FUNC0(f);
      return 0;
   }

   buffer = (char *) FUNC5(buf_size);
   if (buffer == NULL) {
      buffer = raw_buffer;
      buf_size = sizeof(raw_buffer);
   }

   while (!FUNC1(f)) {
      int n = FUNC2(buffer, 1, buf_size, f);
      if (n != 0)
         FUNC4(buffer, 1, n, g);
   }

   FUNC0(f);
   if (buffer != raw_buffer)
      FUNC3(buffer);

   FUNC0(g);
   return 1;
}