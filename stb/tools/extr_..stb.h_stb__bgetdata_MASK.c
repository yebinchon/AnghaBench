#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ indata; scalar_t__ inend; } ;
typedef  TYPE_1__ stbfile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(stbfile *s, void *buffer, unsigned int len)
{
   if (s->indata + len > s->inend)
      len = (unsigned int) (s->inend - s->indata);
   FUNC0(buffer, s->indata, len);
   s->indata += len;
   return len;
}