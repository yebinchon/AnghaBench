
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t* m_comps_indices_to_decode; size_t m_numcomps_to_decode; } ;
struct TYPE_8__ {TYPE_2__ m_decoder; } ;
struct TYPE_9__ {TYPE_3__ m_specific_param; TYPE_1__* m_private_image; } ;
typedef TYPE_4__ opj_j2k_t ;
typedef int opj_event_mgr_t ;
struct TYPE_6__ {size_t const numcomps; } ;
typedef size_t OPJ_UINT32 ;
typedef size_t OPJ_BOOL ;


 int EVT_ERROR ;
 size_t OPJ_FALSE ;
 size_t OPJ_TRUE ;
 int memcpy (size_t*,size_t const*,size_t) ;
 scalar_t__ opj_calloc (int,size_t const) ;
 int opj_event_msg (int *,int ,char*,...) ;
 int opj_free (size_t*) ;
 scalar_t__ opj_malloc (size_t) ;

OPJ_BOOL opj_j2k_set_decoded_components(opj_j2k_t *p_j2k,
                                        OPJ_UINT32 numcomps,
                                        const OPJ_UINT32* comps_indices,
                                        opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 i;
    OPJ_BOOL* already_mapped;

    if (p_j2k->m_private_image == ((void*)0)) {
        opj_event_msg(p_manager, EVT_ERROR,
                      "opj_read_header() should be called before "
                      "opj_set_decoded_components().\n");
        return OPJ_FALSE;
    }

    already_mapped = (OPJ_BOOL*) opj_calloc(sizeof(OPJ_BOOL),
                                            p_j2k->m_private_image->numcomps);
    if (already_mapped == ((void*)0)) {
        return OPJ_FALSE;
    }

    for (i = 0; i < numcomps; i++) {
        if (comps_indices[i] >= p_j2k->m_private_image->numcomps) {
            opj_event_msg(p_manager, EVT_ERROR,
                          "Invalid component index: %u\n",
                          comps_indices[i]);
            opj_free(already_mapped);
            return OPJ_FALSE;
        }
        if (already_mapped[comps_indices[i]]) {
            opj_event_msg(p_manager, EVT_ERROR,
                          "Component index %u used several times\n",
                          comps_indices[i]);
            opj_free(already_mapped);
            return OPJ_FALSE;
        }
        already_mapped[comps_indices[i]] = OPJ_TRUE;
    }
    opj_free(already_mapped);

    opj_free(p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode);
    if (numcomps) {
        p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode =
            (OPJ_UINT32*) opj_malloc(numcomps * sizeof(OPJ_UINT32));
        if (p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode == ((void*)0)) {
            p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode = 0;
            return OPJ_FALSE;
        }
        memcpy(p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode,
               comps_indices,
               numcomps * sizeof(OPJ_UINT32));
    } else {
        p_j2k->m_specific_param.m_decoder.m_comps_indices_to_decode = ((void*)0);
    }
    p_j2k->m_specific_param.m_decoder.m_numcomps_to_decode = numcomps;

    return OPJ_TRUE;
}
