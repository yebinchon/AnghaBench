#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char const uint8 ;
typedef  int /*<<< orphan*/  stb_vorbis_alloc ;
struct TYPE_8__ {unsigned char const* stream; unsigned char const* stream_end; int error; scalar_t__ eof; int /*<<< orphan*/  push_mode; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int VORBIS_need_more_data ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

stb_vorbis *FUNC4(
         const unsigned char *data, int data_len, // the memory available for decoding
         int *data_used,              // only defined if result is not NULL
         int *error, const stb_vorbis_alloc *alloc)
{
   stb_vorbis *f, p;
   FUNC3(&p, alloc);
   p.stream     = (uint8 *) data;
   p.stream_end = (uint8 *) data + data_len;
   p.push_mode  = TRUE;
   if (!FUNC0(&p)) {
      if (p.eof)
         *error = VORBIS_need_more_data;
      else
         *error = p.error;
      return NULL;
   }
   f = FUNC1(&p);
   if (f) {
      *f = p;
      *data_used = (int) (f->stream - data);
      *error = 0;
      return f;
   } else {
      FUNC2(&p);
      return NULL;
   }
}