#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opj_stream_private_t ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ length; } ;
typedef  TYPE_1__ opj_jp2_box_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 scalar_t__ JPIP_MANF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC5(int second,
                    int v,
                    opj_jp2_box_t *box,
                    opj_stream_private_t *cio,
                    opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    int i;
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;

    lenp = FUNC2(cio);
    FUNC1(cio, 4, p_manager);              /* L [at the end]     */
    FUNC4(l_data_header, JPIP_MANF, 4);    /* T                  */
    FUNC3(cio, l_data_header, 4, p_manager);

    if (second) {                         /* Write only during the second pass */
        for (i = 0; i < v; i++) {
            FUNC4(l_data_header, box[i].length,
                            4);  /* Box length                     */
            FUNC3(cio, l_data_header, 4, p_manager);
            FUNC4(l_data_header, box[i].type,
                            4);  /* Box type                       */
            FUNC3(cio, l_data_header, 4, p_manager);
        }
    }

    len = (OPJ_UINT32)(FUNC2(cio) - lenp);
    FUNC0(cio, lenp, p_manager);
    FUNC4(l_data_header, len, 4);/* L                                 */
    FUNC3(cio, l_data_header, 4, p_manager);
    FUNC0(cio, lenp + len, p_manager);
}