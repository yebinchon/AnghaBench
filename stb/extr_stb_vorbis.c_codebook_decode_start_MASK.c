#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ last_seg; int /*<<< orphan*/  bytes_in_seg; } ;
typedef  TYPE_1__ vorb ;
struct TYPE_9__ {scalar_t__ lookup_type; int sorted_entries; scalar_t__ sparse; } ;
typedef  TYPE_2__ Codebook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  VORBIS_invalid_stream ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(vorb *f, Codebook *c)
{
   int z = -1;

   // type 0 is only legal in a scalar context
   if (c->lookup_type == 0)
      FUNC2(f, VORBIS_invalid_stream);
   else {
      FUNC0(z,f,c);
      if (c->sparse) FUNC1(z < c->sorted_entries);
      if (z < 0) {  // check for EOP
         if (!f->bytes_in_seg)
            if (f->last_seg)
               return z;
         FUNC2(f, VORBIS_invalid_stream);
      }
   }
   return z;
}