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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/  const*,unsigned int) ; 

stb_vorbis * FUNC3(FILE *file, int close_on_free, int *error, const stb_vorbis_alloc *alloc)
{
   unsigned int len, start;
   start = (unsigned int) FUNC1(file);
   FUNC0(file, 0, SEEK_END);
   len = (unsigned int) (FUNC1(file) - start);
   FUNC0(file, start, SEEK_SET);
   return FUNC2(file, close_on_free, error, alloc, len);
}