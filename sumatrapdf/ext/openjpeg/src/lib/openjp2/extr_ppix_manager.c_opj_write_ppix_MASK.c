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
struct TYPE_7__ {int length; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ opj_jp2_box_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
struct TYPE_8__ {int numcomps; } ;
typedef  TYPE_2__ opj_codestream_info_t ;
typedef  int OPJ_UINT32 ;
typedef  int OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  JPIP_FAIX ; 
 int JPIP_PPIX ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int,TYPE_2__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(int coff, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused,
                   int j2klen, opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    int compno, i;
    opj_jp2_box_t *box;
    OPJ_OFF_T lenp;
    OPJ_UINT32 len;

    /*  printf("cstr_info.packno %d\n", cstr_info.packno); //NMAX? */

    lenp = -1;
    box = (opj_jp2_box_t *)FUNC0((size_t)cstr_info.numcomps,
                                      sizeof(opj_jp2_box_t));
    if (box == NULL) {
        return 0;
    }
    for (i = 0; i < 2; i++) {
        if (i)

        {
            FUNC2(cio, lenp, p_manager);
        }

        lenp = (OPJ_UINT32)(FUNC4(cio));
        FUNC3(cio, 4, p_manager);        /* L [at the end] */
        FUNC6(l_data_header, JPIP_PPIX, 4); /* PPIX           */
        FUNC5(cio, l_data_header, 4, p_manager);

        FUNC7(i, cstr_info.numcomps, box, cio, p_manager);

        for (compno = 0; compno < cstr_info.numcomps; compno++) {
            box[compno].length = (OPJ_UINT32)FUNC8(coff, compno, cstr_info,
                                 EPHused, j2klen, cio, p_manager);
            box[compno].type = JPIP_FAIX;
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