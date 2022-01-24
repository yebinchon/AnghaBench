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
typedef  int ZPOS64_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int FUNC5(const char* filename)
{
  int largeFile = 0;
  ZPOS64_T pos = 0;
  FILE* pFile = FUNC0(filename, "rb");

  if(pFile != NULL)
  {
    int n = FUNC1(pFile, 0, SEEK_END);
    pos = FUNC2(pFile);

                FUNC4("File : %s is %lld bytes\n", filename, pos);

    if(pos >= 0xffffffff)
     largeFile = 1;

                FUNC3(pFile);
  }

 return largeFile;
}