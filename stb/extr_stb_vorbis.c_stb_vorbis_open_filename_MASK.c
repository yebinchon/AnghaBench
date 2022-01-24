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
typedef  int /*<<< orphan*/  stb_vorbis_alloc ;
typedef  int /*<<< orphan*/  stb_vorbis ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int VORBIS_file_open_failure ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/  const*) ; 

stb_vorbis * FUNC3(const char *filename, int *error, const stb_vorbis_alloc *alloc)
{
   FILE *f;
#if defined(_WIN32) && defined(__STDC_WANT_SECURE_LIB__)
   if (0 != fopen_s(&f, filename, "rb"))
      f = NULL;
#else
   f = FUNC0(filename, "rb");
#endif
   if (f) 
      return FUNC2(f, TRUE, error, alloc);
   if (error) *error = VORBIS_file_open_failure;
   return NULL;
}