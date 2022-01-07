
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int crtc_mode_ctrl; } ;
struct TYPE_3__ {int seq_clock_mode; int seq_reset; } ;
struct vga_softc {TYPE_2__ vga_crtc; TYPE_1__ vga_seq; } ;


 int CRTC_MC_TE ;
 int SEQ_CM_SO ;
 int SEQ_RESET_ASYNC ;
 int SEQ_RESET_SYNC ;

__attribute__((used)) static bool
vga_in_reset(struct vga_softc *sc)
{
 return (((sc->vga_seq.seq_clock_mode & SEQ_CM_SO) != 0) ||
     ((sc->vga_seq.seq_reset & SEQ_RESET_ASYNC) == 0) ||
     ((sc->vga_seq.seq_reset & SEQ_RESET_SYNC) == 0) ||
     ((sc->vga_crtc.crtc_mode_ctrl & CRTC_MC_TE) == 0));
}
