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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int u_char ;
struct pci_devinst {int pi_slot; int pi_func; struct pci_ahci_softc* pi_arg; } ;
struct pci_ahci_softc {int ports; int cap; int pi; int vs; TYPE_1__* port; int /*<<< orphan*/  cap2; int /*<<< orphan*/  mtx; struct pci_devinst* asc_pi; } ;
struct blockif_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  bident ;
struct TYPE_2__ {int atapi; int ioqsz; struct blockif_ctxt* bctx; int /*<<< orphan*/  ident; struct pci_ahci_softc* pr_sc; } ;
typedef  int /*<<< orphan*/  CC_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_CAP2_APST ; 
 int AHCI_CAP_64BIT ; 
 int AHCI_CAP_ISS_SHIFT ; 
 unsigned int AHCI_CAP_NCS_SHIFT ; 
 int AHCI_CAP_PMD ; 
 int AHCI_CAP_PSC ; 
 int AHCI_CAP_SAL ; 
 int AHCI_CAP_SALP ; 
 int AHCI_CAP_SCLO ; 
 int AHCI_CAP_SMPS ; 
 int AHCI_CAP_SNCQ ; 
 int AHCI_CAP_SSC ; 
 int AHCI_CAP_SSNTF ; 
 int AHCI_CAP_SSS ; 
 int AHCI_CAP_SXS ; 
 scalar_t__ AHCI_OFFSET ; 
 int /*<<< orphan*/  AHCI_PORT_IDENT ; 
 int AHCI_STEP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int*) ; 
 int CC_SHA256_DIGEST_LENGTH ; 
 int MAX_PORTS ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int /*<<< orphan*/  PCIC_STORAGE ; 
 int /*<<< orphan*/  PCIP_STORAGE_SATA_AHCI_1_0 ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_PROGIF ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_STORAGE_SATA ; 
 int /*<<< orphan*/  FUNC1 (struct pci_ahci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct blockif_ctxt*) ; 
 struct blockif_ctxt* FUNC3 (char*,char*) ; 
 struct pci_ahci_softc* FUNC4 (int,int) ; 
 int /*<<< orphan*/  dbg ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_ahci_softc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_devinst*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(struct pci_devinst *pi, char *opts, int atapi)
{
	char bident[sizeof("XX:X:X")];
	struct blockif_ctxt *bctxt;
	struct pci_ahci_softc *sc;
	int ret, slots;
	u_char digest[CC_SHA256_DIGEST_LENGTH];

	ret = 0;

	if (opts == NULL) {
		FUNC6(stderr, "pci_ahci: backing device required\n");
		return (1);
	}

#ifdef AHCI_DEBUG
	dbg = fopen("/tmp/log", "w+");
#endif

	sc = FUNC4(1, sizeof(struct pci_ahci_softc));
	pi->pi_arg = sc;
	sc->asc_pi = pi;
	sc->ports = MAX_PORTS;

	/*
	 * Only use port 0 for a backing device. All other ports will be
	 * marked as unused
	 */
	sc->port[0].atapi = atapi;

	/*
	 * Attempt to open the backing image. Use the PCI
	 * slot/func for the identifier string.
	 */
	FUNC15(bident, sizeof(bident), "%d:%d", pi->pi_slot, pi->pi_func);
	bctxt = FUNC3(opts, bident);
	if (bctxt == NULL) {       	
		ret = 1;
		goto open_fail;
	}	
	sc->port[0].bctx = bctxt;
	sc->port[0].pr_sc = sc;

	/*
	 * Create an identifier for the backing file. Use parts of the
	 * md5 sum of the filename
	 */
    FUNC0(opts, (CC_LONG)FUNC16(opts), digest);
    FUNC15(sc->port[0].ident, AHCI_PORT_IDENT, "BHYVE-%02X%02X-%02X%02X-%02X%02X",
	    digest[0], digest[1], digest[2], digest[3], digest[4], digest[5]);

	/*
	 * Allocate blockif request structures and add them
	 * to the free list
	 */
	FUNC8(&sc->port[0]);

	FUNC14(&sc->mtx, NULL);

	/* Intel ICH8 AHCI */
	slots = sc->port[0].ioqsz;
	if (slots > 32)
		slots = 32;
	--slots;
	sc->cap = AHCI_CAP_64BIT | AHCI_CAP_SNCQ | AHCI_CAP_SSNTF |
	    AHCI_CAP_SMPS | AHCI_CAP_SSS | AHCI_CAP_SALP |
	    AHCI_CAP_SAL | AHCI_CAP_SCLO | (0x3 << AHCI_CAP_ISS_SHIFT)|
	    AHCI_CAP_PMD | AHCI_CAP_SSC | AHCI_CAP_PSC |
	    (((unsigned) slots) << AHCI_CAP_NCS_SHIFT) | AHCI_CAP_SXS |
	    (((unsigned) sc->ports) - 1);

	/* Only port 0 implemented */
	sc->pi = 1;
	sc->vs = 0x10300;
	sc->cap2 = AHCI_CAP2_APST;
	FUNC1(sc);

	FUNC12(pi, PCIR_DEVICE, 0x2821);
	FUNC12(pi, PCIR_VENDOR, 0x8086);
	FUNC13(pi, PCIR_CLASS, PCIC_STORAGE);
	FUNC13(pi, PCIR_SUBCLASS, PCIS_STORAGE_SATA);
	FUNC13(pi, PCIR_PROGIF, PCIP_STORAGE_SATA_AHCI_1_0);
	FUNC9(pi, 1);
	FUNC10(pi, 5, PCIBAR_MEM32,
		((uint64_t) (AHCI_OFFSET + sc->ports * AHCI_STEP)));

	FUNC11(pi);

open_fail:
	if (ret) {
		if (sc->port[0].bctx != NULL)
			FUNC2(sc->port[0].bctx);
		FUNC7(sc);
	}

	return (ret);
}