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
struct disassemble_info {int dummy; } ;
typedef  scalar_t__ ULONG_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(ULONG_PTR Addr, struct disassemble_info * Ignored)
{
  if (!FUNC1((void*)Addr))
    {
      FUNC0("<%p>", Addr);
    }
}