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
struct uart_softc {int dummy; } ;
struct pci_devinst {int /*<<< orphan*/  pi_func; int /*<<< orphan*/  pi_slot; struct uart_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM_DEV ; 
 int /*<<< orphan*/  COM_VENDOR ; 
 int /*<<< orphan*/  PCIBAR_IO ; 
 int /*<<< orphan*/  PCIC_SIMPLECOMM ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  UART_IO_BAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_uart_intr_assert ; 
 int /*<<< orphan*/  pci_uart_intr_deassert ; 
 int /*<<< orphan*/  stderr ; 
 struct uart_softc* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_devinst*) ; 
 scalar_t__ FUNC8 (struct uart_softc*,char*,char*) ; 

__attribute__((used)) static int
FUNC9(struct pci_devinst *pi, char *opts)
{
	struct uart_softc *sc;
	char *name;

	FUNC3(pi, 0, PCIBAR_IO, UART_IO_BAR_SIZE);
	FUNC4(pi);

	/* initialize config space */
	FUNC5(pi, PCIR_DEVICE, COM_DEV);
	FUNC5(pi, PCIR_VENDOR, COM_VENDOR);
	FUNC6(pi, PCIR_CLASS, PCIC_SIMPLECOMM);

	sc = FUNC7(pci_uart_intr_assert, pci_uart_intr_deassert, pi);
	pi->pi_arg = sc;

	FUNC0(&name, "pci uart at %d:%d", pi->pi_slot, pi->pi_func);
	if (FUNC8(sc, opts, name) != 0) {
		FUNC1(stderr, "Unable to initialize backend '%s' for %s\n", opts, name);
		FUNC2(name);
		return (-1);
	}

	FUNC2(name);
	return (0);
}