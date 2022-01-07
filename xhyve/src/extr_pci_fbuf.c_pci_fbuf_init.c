
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int depth; int height; int width; int fbsize; } ;
struct pci_fbuf_softc {int vga_enabled; scalar_t__ vga_full; int rfb_password; int rfb_wait; int rfb_port; int rfb_host; scalar_t__ fb_base; int gc_image; int vgasc; TYPE_2__ memregs; int fbaddr; struct pci_devinst* fsc_pi; } ;
struct pci_devinst {TYPE_1__* pi_bar; struct pci_fbuf_softc* pi_arg; } ;
struct TYPE_3__ {int addr; } ;


 int COLS_DEFAULT ;
 int DEBUG_INFO ;
 int DMEMSZ ;
 int DPRINTF (int ,char*) ;
 int FB_SIZE ;
 int PCIBAR_MEM32 ;
 int PCIC_DISPLAY ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_DISPLAY_VGA ;
 int PCI_FBUF_MSI_MSGS ;
 int ROWS_DEFAULT ;
 int assert (int) ;
 struct pci_fbuf_softc* calloc (int,int) ;
 int console_fb_register (int ,struct pci_fbuf_softc*) ;
 int console_get_image () ;
 int console_init (int ,int ,scalar_t__) ;
 struct pci_fbuf_softc* fbuf_sc ;
 int fprintf (int ,char*) ;
 int free (struct pci_fbuf_softc*) ;
 int memset (void*,int ,int ) ;
 int pci_emul_add_msicap (struct pci_devinst*,int ) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int,int ,int ) ;
 int pci_fbuf_parse_opts (struct pci_fbuf_softc*,char*) ;
 int pci_fbuf_render ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int rfb_init (int ,int ,int ,int ) ;
 int stderr ;
 int vga_init (int) ;
 scalar_t__ xh_setup_video_memory (int ,int ,void**) ;

__attribute__((used)) static int
pci_fbuf_init(struct pci_devinst *pi, char *opts)
{
 int error;
 struct pci_fbuf_softc *sc;

 if (fbuf_sc != ((void*)0)) {
  fprintf(stderr, "Only one frame buffer device is allowed.\n");
  return (-1);
 }

 sc = calloc(1, sizeof(struct pci_fbuf_softc));

 pi->pi_arg = sc;


 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x40FB);
 pci_set_cfgdata16(pi, PCIR_VENDOR, 0xFB5D);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_DISPLAY);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_DISPLAY_VGA);

 error = pci_emul_alloc_bar(pi, 0, PCIBAR_MEM32, DMEMSZ);
 assert(error == 0);

 error = pci_emul_alloc_bar(pi, 1, PCIBAR_MEM32, FB_SIZE);
 assert(error == 0);

 error = pci_emul_add_msicap(pi, PCI_FBUF_MSI_MSGS);
 assert(error == 0);

 sc->fbaddr = pi->pi_bar[1].addr;
 sc->memregs.fbsize = FB_SIZE;
 sc->memregs.width = COLS_DEFAULT;
 sc->memregs.height = ROWS_DEFAULT;
 sc->memregs.depth = 32;

 sc->vga_enabled = 1;
 sc->vga_full = 0;

 sc->fsc_pi = pi;

 error = pci_fbuf_parse_opts(sc, opts);
 if (error != 0)
  goto done;


 if (sc->vga_full != 0) {
  fprintf(stderr, "pci_fbuf: VGA rendering not enabled");
  goto done;
 }

 DPRINTF(DEBUG_INFO, ("fbuf frame buffer base: %p [sz %lu]\r\n",
         (void *)sc->fb_base, FB_SIZE));







 if (xh_setup_video_memory(sc->fbaddr, FB_SIZE, (void **)&sc->fb_base) != 0) {
  fprintf(stderr, "pci_fbuf: mapseg failed - try deleting VM and restarting\n");
  error = -1;
  goto done;
 }

 console_init(sc->memregs.width, sc->memregs.height, sc->fb_base);
 console_fb_register(pci_fbuf_render, sc);

 if (sc->vga_enabled)
  sc->vgasc = vga_init(!sc->vga_full);
 sc->gc_image = console_get_image();

 fbuf_sc = sc;

 memset((void *)sc->fb_base, 0, FB_SIZE);

 error = rfb_init(sc->rfb_host, sc->rfb_port, sc->rfb_wait, sc->rfb_password);
done:
 if (error)
  free(sc);

 return (error);
}
