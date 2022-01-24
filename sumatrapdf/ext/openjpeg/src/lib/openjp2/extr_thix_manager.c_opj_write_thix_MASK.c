#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opj_stream_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  type; scalar_t__ length; } ;
typedef  TYPE_1__ opj_jp2_box_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
struct TYPE_8__ {int tw; int th; } ;
typedef  TYPE_2__ opj_codestream_info_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  JPIP_MHIX ; 
 scalar_t__ JPIP_THIX ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,TYPE_2__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(int coff, opj_codestream_info_t cstr_info,
                   opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    int i;
    int tileno;
    opj_jp2_box_t *box;
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;

    lenp = 0;
    box = (opj_jp2_box_t *)FUNC0((size_t)(cstr_info.tw * cstr_info.th),
                                      sizeof(opj_jp2_box_t));
    if (box == NULL) {
        return 0;
    }
    for (i = 0; i < 2 ; i++) {
        if (i) {
            FUNC2(cio, lenp, p_manager);
        }

        lenp = FUNC4(cio);
        FUNC3(cio, 4, p_manager);             /* L [at the end] */
        FUNC6(l_data_header, JPIP_THIX, 4); /* THIX */
        FUNC5(cio, l_data_header, 4, p_manager);

        FUNC7(i, cstr_info.tw * cstr_info.th, box, cio, p_manager);

        for (tileno = 0; tileno < cstr_info.tw * cstr_info.th; tileno++) {
            box[tileno].length = (OPJ_UINT32)FUNC8(coff, cstr_info, tileno,
                                 cio, p_manager);
            box[tileno].type = JPIP_MHIX;
        }

        len = (OPJ_UINT32)(FUNC4(cio) - lenp);
        FUNC2(cio, lenp, p_manager);
        FUNC6(l_data_header, len, 4); /* L              */
        FUNC5(cio, l_data_header, 4, p_manager);
        FUNC2(cio, lenp + len, p_manager);

    }

    FUNC1(box);

    return (int)len;
}