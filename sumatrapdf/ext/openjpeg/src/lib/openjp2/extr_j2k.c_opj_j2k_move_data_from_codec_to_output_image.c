
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int m_numcomps_to_decode; size_t* m_comps_indices_to_decode; } ;
struct TYPE_14__ {TYPE_1__ m_decoder; } ;
struct TYPE_16__ {TYPE_3__* m_output_image; TYPE_2__ m_specific_param; int * m_private_image; } ;
typedef TYPE_4__ opj_j2k_t ;
struct TYPE_17__ {size_t numcomps; TYPE_6__* comps; } ;
typedef TYPE_5__ opj_image_t ;
struct TYPE_18__ {int w; int h; int * data; int resno_decoded; } ;
typedef TYPE_6__ opj_image_comp_t ;
struct TYPE_15__ {TYPE_11__* comps; } ;
struct TYPE_12__ {int * data; int resno_decoded; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_INT32 ;
typedef int OPJ_BOOL ;
typedef int FILE ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int assert (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (int *,int,int,int *) ;
 int memcpy (TYPE_6__*,TYPE_11__*,int) ;
 int opj_free (TYPE_6__*) ;
 int opj_image_data_free (int *) ;
 int opj_image_destroy (int *) ;
 scalar_t__ opj_malloc (int) ;
 int sprintf (char*,char*,size_t) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_move_data_from_codec_to_output_image(opj_j2k_t * p_j2k,
        opj_image_t * p_image)
{
    OPJ_UINT32 compno;


    if (p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode > 0) {
        opj_image_comp_t* newcomps =
            (opj_image_comp_t*) opj_malloc(
                p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode *
                sizeof(opj_image_comp_t));
        if (newcomps == ((void*)0)) {
            opj_image_destroy(p_j2k->m_private_image);
            p_j2k->m_private_image = ((void*)0);
            return OPJ_FALSE;
        }
        for (compno = 0; compno < p_image->numcomps; compno++) {
            opj_image_data_free(p_image->comps[compno].data);
            p_image->comps[compno].data = ((void*)0);
        }
        for (compno = 0;
                compno < p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode; compno++) {
            OPJ_UINT32 src_compno =
                p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode[compno];
            memcpy(&(newcomps[compno]),
                   &(p_j2k->m_output_image->comps[src_compno]),
                   sizeof(opj_image_comp_t));
            newcomps[compno].resno_decoded =
                p_j2k->m_output_image->comps[src_compno].resno_decoded;
            newcomps[compno].data = p_j2k->m_output_image->comps[src_compno].data;
            p_j2k->m_output_image->comps[src_compno].data = ((void*)0);
        }
        for (compno = 0; compno < p_image->numcomps; compno++) {
            assert(p_j2k->m_output_image->comps[compno].data == ((void*)0));
            opj_image_data_free(p_j2k->m_output_image->comps[compno].data);
            p_j2k->m_output_image->comps[compno].data = ((void*)0);
        }
        p_image->numcomps = p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode;
        opj_free(p_image->comps);
        p_image->comps = newcomps;
    } else {
        for (compno = 0; compno < p_image->numcomps; compno++) {
            p_image->comps[compno].resno_decoded =
                p_j2k->m_output_image->comps[compno].resno_decoded;
            opj_image_data_free(p_image->comps[compno].data);
            p_image->comps[compno].data = p_j2k->m_output_image->comps[compno].data;
            p_j2k->m_output_image->comps[compno].data = ((void*)0);
        }
    }
    return OPJ_TRUE;
}
