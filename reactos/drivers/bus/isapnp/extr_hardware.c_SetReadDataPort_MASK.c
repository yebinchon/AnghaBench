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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG_PTR ;
typedef  scalar_t__ PUCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ISAPNP_READPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
inline
VOID
FUNC1(PUCHAR ReadDataPort)
{
  FUNC0(ISAPNP_READPORT, ((ULONG_PTR)ReadDataPort >> 2));
}