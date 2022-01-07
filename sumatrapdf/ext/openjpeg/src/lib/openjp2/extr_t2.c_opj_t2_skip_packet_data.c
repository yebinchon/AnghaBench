
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* comps; } ;
typedef TYPE_3__ opj_tcd_tile_t ;
struct TYPE_15__ {scalar_t__ numpasses; scalar_t__ maxpasses; int newlen; scalar_t__ numnewpasses; } ;
typedef TYPE_4__ opj_tcd_seg_t ;
struct TYPE_16__ {scalar_t__ numbands; TYPE_8__* bands; } ;
typedef TYPE_5__ opj_tcd_resolution_t ;
struct TYPE_13__ {TYPE_7__* dec; } ;
struct TYPE_17__ {scalar_t__ cw; scalar_t__ ch; TYPE_2__ cblks; } ;
typedef TYPE_6__ opj_tcd_precinct_t ;
struct TYPE_18__ {scalar_t__ numnewpasses; int numsegs; int len; TYPE_4__* segs; } ;
typedef TYPE_7__ opj_tcd_cblk_dec_t ;
struct TYPE_19__ {scalar_t__ x1; scalar_t__ x0; scalar_t__ y1; scalar_t__ y0; TYPE_6__* precincts; } ;
typedef TYPE_8__ opj_tcd_band_t ;
typedef int opj_t2_t ;
struct TYPE_20__ {size_t compno; size_t resno; size_t precno; } ;
typedef TYPE_9__ opj_pi_iterator_t ;
typedef int opj_packet_info_t ;
typedef int opj_event_mgr_t ;
struct TYPE_12__ {TYPE_5__* resolutions; } ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int EVT_ERROR ;
 int EVT_WARNING ;
 int JAS_FPRINTF (int ,char*,scalar_t__,int) ;
 int JPWL_ASSUME ;
 int OPJ_ARG_NOT_USED (int *) ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*,...) ;
 int stderr ;

__attribute__((used)) static OPJ_BOOL opj_t2_skip_packet_data(opj_t2_t* p_t2,
                                        opj_tcd_tile_t *p_tile,
                                        opj_pi_iterator_t *p_pi,
                                        OPJ_UINT32 * p_data_read,
                                        OPJ_UINT32 p_max_length,
                                        opj_packet_info_t *pack_info,
                                        opj_event_mgr_t *p_manager)
{
    OPJ_UINT32 bandno, cblkno;
    OPJ_UINT32 l_nb_code_blocks;
    opj_tcd_band_t *l_band = 00;
    opj_tcd_cblk_dec_t* l_cblk = 00;
    opj_tcd_resolution_t* l_res =
        &p_tile->comps[p_pi->compno].resolutions[p_pi->resno];

    OPJ_ARG_NOT_USED(p_t2);
    OPJ_ARG_NOT_USED(pack_info);

    *p_data_read = 0;
    l_band = l_res->bands;

    for (bandno = 0; bandno < l_res->numbands; ++bandno) {
        opj_tcd_precinct_t *l_prc = &l_band->precincts[p_pi->precno];

        if ((l_band->x1 - l_band->x0 == 0) || (l_band->y1 - l_band->y0 == 0)) {
            ++l_band;
            continue;
        }

        l_nb_code_blocks = l_prc->cw * l_prc->ch;
        l_cblk = l_prc->cblks.dec;

        for (cblkno = 0; cblkno < l_nb_code_blocks; ++cblkno) {
            opj_tcd_seg_t *l_seg = 00;

            if (!l_cblk->numnewpasses) {

                ++l_cblk;
                continue;
            }

            if (!l_cblk->numsegs) {
                l_seg = l_cblk->segs;
                ++l_cblk->numsegs;
            } else {
                l_seg = &l_cblk->segs[l_cblk->numsegs - 1];

                if (l_seg->numpasses == l_seg->maxpasses) {
                    ++l_seg;
                    ++l_cblk->numsegs;
                }
            }

            do {

                if (((*p_data_read + l_seg->newlen) < (*p_data_read)) ||
                        ((*p_data_read + l_seg->newlen) > p_max_length)) {
                    opj_event_msg(p_manager, EVT_ERROR,
                                  "skip: segment too long (%d) with max (%d) for codeblock %d (p=%d, b=%d, r=%d, c=%d)\n",
                                  l_seg->newlen, p_max_length, cblkno, p_pi->precno, bandno, p_pi->resno,
                                  p_pi->compno);
                    return OPJ_FALSE;
                }
                JAS_FPRINTF(stderr, "p_data_read (%d) newlen (%d) \n", *p_data_read,
                            l_seg->newlen);
                *(p_data_read) += l_seg->newlen;

                l_seg->numpasses += l_seg->numnewpasses;
                l_cblk->numnewpasses -= l_seg->numnewpasses;
                if (l_cblk->numnewpasses > 0) {
                    ++l_seg;
                    ++l_cblk->numsegs;
                }
            } while (l_cblk->numnewpasses > 0);

            ++l_cblk;
        }

        ++l_band;
    }

    return OPJ_TRUE;
}
