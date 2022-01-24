#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ bytes_in_seg; int /*<<< orphan*/  packet_bytes; scalar_t__ last_seg; } ;
typedef  TYPE_1__ vorb ;

/* Variables and functions */
 int EOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(vorb *f)
{
   if (!f->bytes_in_seg) {  // CLANG!
      if (f->last_seg) return EOP;
      else if (!FUNC2(f)) return EOP;
   }
   FUNC0(f->bytes_in_seg > 0);
   --f->bytes_in_seg;
   ++f->packet_bytes;
   return FUNC1(f);
}