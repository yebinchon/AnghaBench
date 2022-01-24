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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC1 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  stb_keep_if_different ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(char *filename, void *data, size_t length)
{
   FILE *f = FUNC3(filename, "wb");
   if (f) {
      unsigned char *data_ptr = (unsigned char *) data;
      size_t remaining = length;
      while (remaining > 0) {
         size_t len2 = remaining > 65536 ? 65536 : remaining;
         size_t len3 = FUNC1(data_ptr, 1, len2, f);
         if (len2 != len3) {
            FUNC0(stderr, "Failed while writing %s\n", filename);
            break;
         }
         remaining -= len2;
         data_ptr += len2;
      }
      FUNC2(f, stb_keep_if_different);
   }
   return f != NULL;
}