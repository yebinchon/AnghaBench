#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  stb_vorbis_alloc ;
struct TYPE_9__ {unsigned int stream_len; int close_on_free; int error; scalar_t__ f_start; int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ stb_vorbis ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

stb_vorbis * FUNC6(FILE *file, int close_on_free, int *error, const stb_vorbis_alloc *alloc, unsigned int length)
{
   stb_vorbis *f, p;
   FUNC4(&p, alloc);
   p.f = file;
   p.f_start = (uint32) FUNC0(file);
   p.stream_len   = length;
   p.close_on_free = close_on_free;
   if (FUNC1(&p)) {
      f = FUNC2(&p);
      if (f) {
         *f = p;
         FUNC5(f);
         return f;
      }
   }
   if (error) *error = p.error;
   FUNC3(&p);
   return NULL;
}