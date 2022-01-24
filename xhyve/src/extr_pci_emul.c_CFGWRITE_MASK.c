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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct pci_devinst *pi, int coff, uint32_t val, int bytes)
{

	if (bytes == 1)
		FUNC2(pi, coff, ((uint8_t) val));
	else if (bytes == 2)
		FUNC0(pi, coff, ((uint16_t) val));
	else
		FUNC1(pi, coff, val);
}