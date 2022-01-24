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
struct stat {size_t st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (void*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void *
FUNC8(const char *fileName, size_t *fileSize_)
{
   FILE *f;
   struct stat sb;
   size_t fileSize;
   void *p;

   /* Open the file */
   f = FUNC2(fileName, "rb");
   if (f == NULL)
   {
      FUNC7("Couldn't open file %s for reading!\n", fileName);
      return NULL;
   }

   /* Get file size */
   if (FUNC5(FUNC0(f), &sb) < 0)
   {
      FUNC1(f);
      FUNC7("Couldn't get size of file %s!\n", fileName);
      return NULL;
   }
   fileSize = sb.st_size;

   /* Load file */
   p = FUNC6(fileSize);
   if (p == NULL)
   {
      FUNC1(f);
      FUNC7("Couldn't allocate %Id bytes for file %s!\n", fileSize, fileName);
      return NULL;
   }

   if (FUNC3(p, fileSize, 1, f) != 1)
   {
      FUNC1(f);
      FUNC4(p);
      FUNC7("Couldn't read file %s into memory!\n", fileName);
      return NULL;
   }

   /* Close file */
   FUNC1(f);

   *fileSize_ = fileSize;
   return p;
}