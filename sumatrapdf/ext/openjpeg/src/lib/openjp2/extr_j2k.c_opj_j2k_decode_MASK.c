#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opj_stream_private_t ;
struct TYPE_20__ {scalar_t__ m_reduce; } ;
struct TYPE_21__ {TYPE_3__ m_dec; } ;
struct TYPE_22__ {TYPE_4__ m_specific_param; } ;
struct TYPE_23__ {TYPE_15__* m_private_image; int /*<<< orphan*/  m_procedure_list; int /*<<< orphan*/ * m_output_image; TYPE_5__ m_cp; } ;
typedef  TYPE_6__ opj_j2k_t ;
struct TYPE_24__ {scalar_t__ numcomps; TYPE_2__* comps; } ;
typedef  TYPE_7__ opj_image_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
struct TYPE_19__ {scalar_t__ factor; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {scalar_t__ factor; } ;
struct TYPE_17__ {scalar_t__ numcomps; TYPE_1__* comps; } ;
typedef  size_t OPJ_UINT32 ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *) ; 

OPJ_BOOL FUNC7(opj_j2k_t * p_j2k,
                        opj_stream_private_t * p_stream,
                        opj_image_t * p_image,
                        opj_event_mgr_t * p_manager)
{
    if (!p_image) {
        return OPJ_FALSE;
    }

    /* Heuristics to detect sequence opj_read_header(), opj_set_decoded_resolution_factor() */
    /* and finally opj_decode_image() without manual setting of comps[].factor */
    /* We could potentially always execute it, if we don't allow people to do */
    /* opj_read_header(), modify x0,y0,x1,y1 of returned image an call opj_decode_image() */
    if (p_j2k->m_cp.m_specific_param.m_dec.m_reduce > 0 &&
            p_j2k->m_private_image != NULL &&
            p_j2k->m_private_image->numcomps > 0 &&
            p_j2k->m_private_image->comps[0].factor ==
            p_j2k->m_cp.m_specific_param.m_dec.m_reduce &&
            p_image->numcomps > 0 &&
            p_image->comps[0].factor == 0 &&
            /* Don't mess with image dimension if the user has allocated it */
            p_image->comps[0].data == NULL) {
        OPJ_UINT32 it_comp;

        /* Update the comps[].factor member of the output image with the one */
        /* of m_reduce */
        for (it_comp = 0; it_comp < p_image->numcomps; ++it_comp) {
            p_image->comps[it_comp].factor = p_j2k->m_cp.m_specific_param.m_dec.m_reduce;
        }
        if (!FUNC6(p_image, p_manager)) {
            return OPJ_FALSE;
        }
    }

    if (p_j2k->m_output_image == NULL) {
        p_j2k->m_output_image = FUNC1();
        if (!(p_j2k->m_output_image)) {
            return OPJ_FALSE;
        }
    }
    FUNC0(p_image, p_j2k->m_output_image);

    /* customization of the decoding */
    if (!FUNC5(p_j2k, p_manager)) {
        return OPJ_FALSE;
    }

    /* Decode the codestream */
    if (! FUNC3(p_j2k, p_j2k->m_procedure_list, p_stream, p_manager)) {
        FUNC2(p_j2k->m_private_image);
        p_j2k->m_private_image = NULL;
        return OPJ_FALSE;
    }

    /* Move data and copy one information from codec to output image*/
    return FUNC4(p_j2k, p_image);
}