
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_char ;
struct TYPE_13__ {int * vs_mtx; } ;
struct TYPE_11__ {scalar_t__ opt_io_size; scalar_t__ min_io_size; void* alignment_offset; void* physical_block_exp; } ;
struct TYPE_10__ {scalar_t__ sectors; scalar_t__ heads; scalar_t__ cylinders; } ;
struct TYPE_12__ {scalar_t__ vbc_writeback; TYPE_3__ vbc_topology; scalar_t__ vbc_blk_size; TYPE_2__ vbc_geometry; int vbc_seg_max; scalar_t__ vbc_size_max; scalar_t__ vbc_capacity; } ;
struct TYPE_14__ {int vq_qsize; } ;
struct pci_vtblk_softc {TYPE_5__ vbsc_vs; struct blockif_ctxt* bc; TYPE_4__ vbsc_cfg; int vbsc_ident; TYPE_6__ vbsc_vq; int vsc_mtx; struct pci_vtblk_ioreq* vbsc_ios; } ;
struct TYPE_9__ {struct pci_vtblk_ioreq* br_param; int br_callback; } ;
struct pci_vtblk_ioreq {scalar_t__ io_idx; struct pci_vtblk_softc* io_sc; TYPE_1__ io_req; } ;
struct pci_devinst {int pi_slot; int pi_func; } ;
struct blockif_ctxt {int dummy; } ;
typedef int off_t ;
typedef int bident ;
typedef int CC_LONG ;


 int BLOCKIF_IOV_MAX ;
 int CC_SHA256 (char*,int ,int*) ;
 int CC_SHA256_DIGEST_LENGTH ;
 int DEV_BSIZE ;
 int PCIC_STORAGE ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int VIRTIO_DEV_BLOCK ;
 int VIRTIO_TYPE_BLOCK ;
 int VIRTIO_VENDOR ;
 int VTBLK_BLK_ID_BYTES ;
 int VTBLK_RINGSZ ;
 int blockif_close (struct blockif_ctxt*) ;
 struct blockif_ctxt* blockif_open (char*,char*) ;
 int blockif_psectsz (struct blockif_ctxt*,int*,int*) ;
 int blockif_sectsz (struct blockif_ctxt*) ;
 int blockif_size (struct blockif_ctxt*) ;
 struct pci_vtblk_softc* calloc (int,int) ;
 int fbsdrun_virtio_msix () ;
 int ffsll (int) ;
 int free (struct pci_vtblk_softc*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pci_vtblk_done ;
 int perror (char*) ;
 int printf (char*) ;
 int pthread_mutex_init (int *,int *) ;
 int snprintf (char*,int,char*,int,int,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ vi_intr_init (TYPE_5__*,int,int ) ;
 int vi_set_io_bar (TYPE_5__*,int ) ;
 int vi_softc_linkup (TYPE_5__*,int *,struct pci_vtblk_softc*,struct pci_devinst*,TYPE_6__*) ;
 int vtblk_vi_consts ;

__attribute__((used)) static int
pci_vtblk_init(struct pci_devinst *pi, char *opts)
{
 char bident[sizeof("XX:X:X")];
 struct blockif_ctxt *bctxt;
 u_char digest[CC_SHA256_DIGEST_LENGTH];
 struct pci_vtblk_softc *sc;
 off_t size;
 int i, sectsz, sts, sto;

 if (opts == ((void*)0)) {
  printf("virtio-block: backing device required\n");
  return (1);
 }




 snprintf(bident, sizeof(bident), "%d:%d", pi->pi_slot, pi->pi_func);
 bctxt = blockif_open(opts, bident);
 if (bctxt == ((void*)0)) {
  perror("Could not open backing file");
  return (1);
 }

 size = blockif_size(bctxt);
 sectsz = blockif_sectsz(bctxt);
 blockif_psectsz(bctxt, &sts, &sto);

 sc = calloc(1, sizeof(struct pci_vtblk_softc));
 sc->bc = bctxt;
 for (i = 0; i < VTBLK_RINGSZ; i++) {
  struct pci_vtblk_ioreq *io = &sc->vbsc_ios[i];
  io->io_req.br_callback = pci_vtblk_done;
  io->io_req.br_param = io;
  io->io_sc = sc;
  io->io_idx = (uint16_t) i;
 }

 pthread_mutex_init(&sc->vsc_mtx, ((void*)0));


 vi_softc_linkup(&sc->vbsc_vs, &vtblk_vi_consts, sc, pi, &sc->vbsc_vq);
 sc->vbsc_vs.vs_mtx = &sc->vsc_mtx;

 sc->vbsc_vq.vq_qsize = VTBLK_RINGSZ;






    CC_SHA256(opts, (CC_LONG)strlen(opts), digest);
 snprintf(sc->vbsc_ident, VTBLK_BLK_ID_BYTES, "BHYVE-%02X%02X-%02X%02X-%02X%02X",
     digest[0], digest[1], digest[2], digest[3], digest[4], digest[5]);


 sc->vbsc_cfg.vbc_capacity =
  (uint64_t) (size / DEV_BSIZE);
 sc->vbsc_cfg.vbc_size_max = 0;
 sc->vbsc_cfg.vbc_seg_max = BLOCKIF_IOV_MAX;
 sc->vbsc_cfg.vbc_geometry.cylinders = 0;
 sc->vbsc_cfg.vbc_geometry.heads = 0;
 sc->vbsc_cfg.vbc_geometry.sectors = 0;
 sc->vbsc_cfg.vbc_blk_size = (uint32_t) sectsz;
 sc->vbsc_cfg.vbc_topology.physical_block_exp =
     (uint8_t) ((sts > sectsz) ? (ffsll(sts / sectsz) - 1) : 0);
 sc->vbsc_cfg.vbc_topology.alignment_offset =
     (uint8_t) ((sto != 0) ? ((sts - sto) / sectsz) : 0);
 sc->vbsc_cfg.vbc_topology.min_io_size = 0;
 sc->vbsc_cfg.vbc_topology.opt_io_size = 0;
 sc->vbsc_cfg.vbc_writeback = 0;






 pci_set_cfgdata16(pi, PCIR_DEVICE, VIRTIO_DEV_BLOCK);
 pci_set_cfgdata16(pi, PCIR_VENDOR, VIRTIO_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_STORAGE);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_BLOCK);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

 if (vi_intr_init(&sc->vbsc_vs, 1, fbsdrun_virtio_msix())) {
  blockif_close(sc->bc);
  free(sc);
  return (1);
 }
 vi_set_io_bar(&sc->vbsc_vs, 0);
 return (0);
}
