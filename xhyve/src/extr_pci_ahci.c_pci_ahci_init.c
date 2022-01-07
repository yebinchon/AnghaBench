
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
struct pci_devinst {int pi_slot; int pi_func; struct pci_ahci_softc* pi_arg; } ;
struct pci_ahci_softc {int ports; int cap; int pi; int vs; TYPE_1__* port; int cap2; int mtx; struct pci_devinst* asc_pi; } ;
struct blockif_ctxt {int dummy; } ;
typedef int bident ;
struct TYPE_2__ {int atapi; int ioqsz; struct blockif_ctxt* bctx; int ident; struct pci_ahci_softc* pr_sc; } ;
typedef int CC_LONG ;


 int AHCI_CAP2_APST ;
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
 int AHCI_PORT_IDENT ;
 int AHCI_STEP ;
 int CC_SHA256 (char*,int ,int*) ;
 int CC_SHA256_DIGEST_LENGTH ;
 int MAX_PORTS ;
 int PCIBAR_MEM32 ;
 int PCIC_STORAGE ;
 int PCIP_STORAGE_SATA_AHCI_1_0 ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_PROGIF ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_STORAGE_SATA ;
 int ahci_reset (struct pci_ahci_softc*) ;
 int blockif_close (struct blockif_ctxt*) ;
 struct blockif_ctxt* blockif_open (char*,char*) ;
 struct pci_ahci_softc* calloc (int,int) ;
 int dbg ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (struct pci_ahci_softc*) ;
 int pci_ahci_ioreq_init (TYPE_1__*) ;
 int pci_emul_add_msicap (struct pci_devinst*,int) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int,int ,int ) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pthread_mutex_init (int *,int *) ;
 int snprintf (char*,int,char*,int,int,...) ;
 int stderr ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
pci_ahci_init(struct pci_devinst *pi, char *opts, int atapi)
{
 char bident[sizeof("XX:X:X")];
 struct blockif_ctxt *bctxt;
 struct pci_ahci_softc *sc;
 int ret, slots;
 u_char digest[CC_SHA256_DIGEST_LENGTH];

 ret = 0;

 if (opts == ((void*)0)) {
  fprintf(stderr, "pci_ahci: backing device required\n");
  return (1);
 }





 sc = calloc(1, sizeof(struct pci_ahci_softc));
 pi->pi_arg = sc;
 sc->asc_pi = pi;
 sc->ports = MAX_PORTS;





 sc->port[0].atapi = atapi;





 snprintf(bident, sizeof(bident), "%d:%d", pi->pi_slot, pi->pi_func);
 bctxt = blockif_open(opts, bident);
 if (bctxt == ((void*)0)) {
  ret = 1;
  goto open_fail;
 }
 sc->port[0].bctx = bctxt;
 sc->port[0].pr_sc = sc;





    CC_SHA256(opts, (CC_LONG)strlen(opts), digest);
    snprintf(sc->port[0].ident, AHCI_PORT_IDENT, "BHYVE-%02X%02X-%02X%02X-%02X%02X",
     digest[0], digest[1], digest[2], digest[3], digest[4], digest[5]);





 pci_ahci_ioreq_init(&sc->port[0]);

 pthread_mutex_init(&sc->mtx, ((void*)0));


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


 sc->pi = 1;
 sc->vs = 0x10300;
 sc->cap2 = AHCI_CAP2_APST;
 ahci_reset(sc);

 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x2821);
 pci_set_cfgdata16(pi, PCIR_VENDOR, 0x8086);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_STORAGE);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_STORAGE_SATA);
 pci_set_cfgdata8(pi, PCIR_PROGIF, PCIP_STORAGE_SATA_AHCI_1_0);
 pci_emul_add_msicap(pi, 1);
 pci_emul_alloc_bar(pi, 5, PCIBAR_MEM32,
  ((uint64_t) (AHCI_OFFSET + sc->ports * AHCI_STEP)));

 pci_lintr_request(pi);

open_fail:
 if (ret) {
  if (sc->port[0].bctx != ((void*)0))
   blockif_close(sc->port[0].bctx);
  free(sc);
 }

 return (ret);
}
