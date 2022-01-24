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
typedef  int /*<<< orphan*/  strm_int ;
struct TYPE_3__ {long sec; long usec; int utc_offset; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_time ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_TIME ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,long*,long*,int*) ; 

node*
FUNC2(const char* s, strm_int len)
{
  long sec, usec;
  int utc_offset;
  node_time* ns;

  if (FUNC1(s, len, &sec, &usec, &utc_offset) < 0) {
    return NULL;
  }
  ns = FUNC0(sizeof(node_time));
  ns->type = NODE_TIME;
  ns->sec = sec;
  ns->usec = usec;
  ns->utc_offset = utc_offset;
  return (node*)ns;
}