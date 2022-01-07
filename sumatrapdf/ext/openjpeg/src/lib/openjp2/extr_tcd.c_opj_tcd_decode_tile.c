
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_29__ {TYPE_10__* tccps; } ;
typedef TYPE_6__ opj_tcp_t ;
struct TYPE_30__ {int minimum_num_resolutions; int data_size_needed; scalar_t__ win_x0; scalar_t__ win_y0; scalar_t__ win_x1; scalar_t__ win_y1; size_t numresolutions; int * data_win; TYPE_9__* resolutions; scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_7__ opj_tcd_tilecomp_t ;
struct TYPE_31__ {size_t tcd_tileno; size_t win_x0; size_t win_y0; size_t win_x1; size_t win_y1; void** used_component; TYPE_4__* image; TYPE_3__* tcd_image; void* whole_tile_decoding; TYPE_5__* cp; TYPE_6__* tcp; } ;
typedef TYPE_8__ opj_tcd_t ;
struct TYPE_32__ {int win_x0; int win_y0; int win_x1; int win_y1; size_t pw; size_t ph; scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef TYPE_9__ opj_tcd_resolution_t ;
struct TYPE_21__ {int * prch; int * prcw; } ;
typedef TYPE_10__ opj_tccp_t ;
typedef int opj_packet_info_t ;
struct TYPE_22__ {int resno_decoded; int dy; int dx; } ;
typedef TYPE_11__ opj_image_comp_t ;
typedef int opj_event_mgr_t ;
typedef int opj_codestream_index_t ;
struct TYPE_28__ {TYPE_6__* tcps; } ;
struct TYPE_27__ {size_t numcomps; TYPE_11__* comps; } ;
struct TYPE_26__ {TYPE_2__* tiles; } ;
struct TYPE_25__ {TYPE_7__* comps; } ;
struct TYPE_24__ {size_t* pw; size_t* ph; int * packet; int * pdy; int * pdx; } ;
struct TYPE_23__ {size_t numlayers; scalar_t__ packno; TYPE_1__* tile; scalar_t__ numcomps; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_SIZE_T ;
typedef int OPJ_INT32 ;
typedef int OPJ_BYTE ;
typedef void* OPJ_BOOL ;


 int EVT_ERROR ;
 void* OPJ_FALSE ;
 void* OPJ_TRUE ;
 int SIZE_MAX ;
 int opj_alloc_tile_component_data (TYPE_7__*) ;
 scalar_t__ opj_calloc (int,size_t) ;
 int opj_event_msg (int *,int ,char*) ;
 int opj_free (void**) ;
 scalar_t__ opj_image_data_alloc (int) ;
 int opj_image_data_free (int *) ;
 scalar_t__ opj_malloc (size_t) ;
 int opj_tcd_dc_level_shift_decode (TYPE_8__*) ;
 int opj_tcd_dwt_decode (TYPE_8__*) ;
 int opj_tcd_is_whole_tilecomp_decoding (TYPE_8__*,size_t) ;
 int opj_tcd_mct_decode (TYPE_8__*,int *) ;
 int opj_tcd_t1_decode (TYPE_8__*,int *) ;
 int opj_tcd_t2_decode (TYPE_8__*,int *,size_t*,size_t,int *,int *) ;
 int opj_uint_ceildiv (size_t,int ) ;
 void* opj_uint_ceildivpow2 (scalar_t__,int) ;
 void* opj_uint_max (size_t,int ) ;
 void* opj_uint_min (size_t,int ) ;
 TYPE_12__* p_cstr_info ;

OPJ_BOOL opj_tcd_decode_tile(opj_tcd_t *p_tcd,
                             OPJ_UINT32 win_x0,
                             OPJ_UINT32 win_y0,
                             OPJ_UINT32 win_x1,
                             OPJ_UINT32 win_y1,
                             OPJ_UINT32 numcomps_to_decode,
                             const OPJ_UINT32 *comps_indices,
                             OPJ_BYTE *p_src,
                             OPJ_UINT32 p_max_length,
                             OPJ_UINT32 p_tile_no,
                             opj_codestream_index_t *p_cstr_index,
                             opj_event_mgr_t *p_manager
                            )
{
    OPJ_UINT32 l_data_read;
    OPJ_UINT32 compno;

    p_tcd->tcd_tileno = p_tile_no;
    p_tcd->tcp = &(p_tcd->cp->tcps[p_tile_no]);
    p_tcd->win_x0 = win_x0;
    p_tcd->win_y0 = win_y0;
    p_tcd->win_x1 = win_x1;
    p_tcd->win_y1 = win_y1;
    p_tcd->whole_tile_decoding = OPJ_TRUE;

    opj_free(p_tcd->used_component);
    p_tcd->used_component = ((void*)0);

    if (numcomps_to_decode) {
        OPJ_BOOL* used_component = (OPJ_BOOL*) opj_calloc(sizeof(OPJ_BOOL),
                                   p_tcd->image->numcomps);
        if (used_component == ((void*)0)) {
            return OPJ_FALSE;
        }
        for (compno = 0; compno < numcomps_to_decode; compno++) {
            used_component[ comps_indices[compno] ] = OPJ_TRUE;
        }

        p_tcd->used_component = used_component;
    }

    for (compno = 0; compno < p_tcd->image->numcomps; compno++) {
        if (p_tcd->used_component != ((void*)0) && !p_tcd->used_component[compno]) {
            continue;
        }

        if (!opj_tcd_is_whole_tilecomp_decoding(p_tcd, compno)) {
            p_tcd->whole_tile_decoding = OPJ_FALSE;
            break;
        }
    }

    if (p_tcd->whole_tile_decoding) {
        for (compno = 0; compno < p_tcd->image->numcomps; compno++) {
            opj_tcd_tilecomp_t* tilec = &(p_tcd->tcd_image->tiles->comps[compno]);
            opj_tcd_resolution_t *l_res = &
                                          (tilec->resolutions[tilec->minimum_num_resolutions - 1]);
            OPJ_SIZE_T l_data_size;


            OPJ_SIZE_T res_w = (OPJ_SIZE_T)(l_res->x1 - l_res->x0);
            OPJ_SIZE_T res_h = (OPJ_SIZE_T)(l_res->y1 - l_res->y0);

            if (p_tcd->used_component != ((void*)0) && !p_tcd->used_component[compno]) {
                continue;
            }


            if (res_h > 0 && res_w > SIZE_MAX / res_h) {
                opj_event_msg(p_manager, EVT_ERROR,
                              "Size of tile data exceeds system limits\n");
                return OPJ_FALSE;
            }
            l_data_size = res_w * res_h;

            if (SIZE_MAX / sizeof(OPJ_UINT32) < l_data_size) {
                opj_event_msg(p_manager, EVT_ERROR,
                              "Size of tile data exceeds system limits\n");
                return OPJ_FALSE;
            }
            l_data_size *= sizeof(OPJ_UINT32);

            tilec->data_size_needed = l_data_size;

            if (!opj_alloc_tile_component_data(tilec)) {
                opj_event_msg(p_manager, EVT_ERROR,
                              "Size of tile data exceeds system limits\n");
                return OPJ_FALSE;
            }
        }
    } else {



        for (compno = 0; compno < p_tcd->image->numcomps; compno++) {
            OPJ_UINT32 resno;
            opj_tcd_tilecomp_t* tilec = &(p_tcd->tcd_image->tiles->comps[compno]);
            opj_image_comp_t* image_comp = &(p_tcd->image->comps[compno]);

            if (p_tcd->used_component != ((void*)0) && !p_tcd->used_component[compno]) {
                continue;
            }



            tilec->win_x0 = opj_uint_max(
                                (OPJ_UINT32)tilec->x0,
                                opj_uint_ceildiv(p_tcd->win_x0, image_comp->dx));
            tilec->win_y0 = opj_uint_max(
                                (OPJ_UINT32)tilec->y0,
                                opj_uint_ceildiv(p_tcd->win_y0, image_comp->dy));
            tilec->win_x1 = opj_uint_min(
                                (OPJ_UINT32)tilec->x1,
                                opj_uint_ceildiv(p_tcd->win_x1, image_comp->dx));
            tilec->win_y1 = opj_uint_min(
                                (OPJ_UINT32)tilec->y1,
                                opj_uint_ceildiv(p_tcd->win_y1, image_comp->dy));
            if (tilec->win_x1 < tilec->win_x0 ||
                    tilec->win_y1 < tilec->win_y0) {



                opj_event_msg(p_manager, EVT_ERROR,
                              "Invalid tilec->win_xxx values\n");
                return OPJ_FALSE;
            }

            for (resno = 0; resno < tilec->numresolutions; ++resno) {
                opj_tcd_resolution_t *res = tilec->resolutions + resno;
                res->win_x0 = opj_uint_ceildivpow2(tilec->win_x0,
                                                   tilec->numresolutions - 1 - resno);
                res->win_y0 = opj_uint_ceildivpow2(tilec->win_y0,
                                                   tilec->numresolutions - 1 - resno);
                res->win_x1 = opj_uint_ceildivpow2(tilec->win_x1,
                                                   tilec->numresolutions - 1 - resno);
                res->win_y1 = opj_uint_ceildivpow2(tilec->win_y1,
                                                   tilec->numresolutions - 1 - resno);
            }
        }
    }
    l_data_read = 0;
    if (! opj_tcd_t2_decode(p_tcd, p_src, &l_data_read, p_max_length, p_cstr_index,
                            p_manager)) {
        return OPJ_FALSE;
    }





    if (! opj_tcd_t1_decode(p_tcd, p_manager)) {
        return OPJ_FALSE;
    }





    if (!p_tcd->whole_tile_decoding) {
        for (compno = 0; compno < p_tcd->image->numcomps; compno++) {
            opj_tcd_tilecomp_t* tilec = &(p_tcd->tcd_image->tiles->comps[compno]);
            opj_image_comp_t* image_comp = &(p_tcd->image->comps[compno]);
            opj_tcd_resolution_t *res = tilec->resolutions + image_comp->resno_decoded;
            OPJ_SIZE_T w = res->win_x1 - res->win_x0;
            OPJ_SIZE_T h = res->win_y1 - res->win_y0;
            OPJ_SIZE_T l_data_size;

            opj_image_data_free(tilec->data_win);
            tilec->data_win = ((void*)0);

            if (p_tcd->used_component != ((void*)0) && !p_tcd->used_component[compno]) {
                continue;
            }

            if (w > 0 && h > 0) {
                if (w > SIZE_MAX / h) {
                    opj_event_msg(p_manager, EVT_ERROR,
                                  "Size of tile data exceeds system limits\n");
                    return OPJ_FALSE;
                }
                l_data_size = w * h;
                if (l_data_size > SIZE_MAX / sizeof(OPJ_INT32)) {
                    opj_event_msg(p_manager, EVT_ERROR,
                                  "Size of tile data exceeds system limits\n");
                    return OPJ_FALSE;
                }
                l_data_size *= sizeof(OPJ_INT32);

                tilec->data_win = (OPJ_INT32*) opj_image_data_alloc(l_data_size);
                if (tilec->data_win == ((void*)0)) {
                    opj_event_msg(p_manager, EVT_ERROR,
                                  "Size of tile data exceeds system limits\n");
                    return OPJ_FALSE;
                }
            }
        }
    }




    if
    (! opj_tcd_dwt_decode(p_tcd)) {
        return OPJ_FALSE;
    }




    if
    (! opj_tcd_mct_decode(p_tcd, p_manager)) {
        return OPJ_FALSE;
    }



    if
    (! opj_tcd_dc_level_shift_decode(p_tcd)) {
        return OPJ_FALSE;
    }




    return OPJ_TRUE;
}
