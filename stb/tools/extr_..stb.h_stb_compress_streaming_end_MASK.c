#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ chash; scalar_t__ buffer; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  length_id; scalar_t__ pending_literals; scalar_t__ valid; int /*<<< orphan*/  hashmask; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stb__running_adler ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ xtb ; 

__attribute__((used)) static int FUNC6(void)
{
   // flush out any remaining data
   FUNC2(xtb.buffer, xtb.buffer+xtb.start, xtb.buffer+xtb.valid,
                      xtb.valid-xtb.start, &xtb.pending_literals, xtb.chash, xtb.hashmask);

   // write out pending literals
   FUNC1(xtb.buffer + xtb.valid - xtb.pending_literals, xtb.pending_literals);

   FUNC3(0x05fa); // end opcode
   FUNC4(stb__running_adler);

   FUNC5(xtb.length_id, xtb.total_bytes);

   FUNC0(xtb.buffer);
   FUNC0(xtb.chash);
   return 1;
}