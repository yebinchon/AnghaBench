#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  opj_stream_private_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 scalar_t__ JPIP_CPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC5(int coff, int clen, opj_stream_private_t *cio,
                    opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [3 * 8];
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;


    lenp = FUNC2(cio);
    FUNC1(cio, 4, p_manager);                /* L [at the end]     */
    FUNC4(l_data_header, JPIP_CPTR, 4);    /* T                  */
    FUNC4(l_data_header + 4, 0, 2);          /* DR  A PRECISER !!  */
    FUNC4(l_data_header + 6, 0, 2);          /* CONT               */
    FUNC4(l_data_header + 8, (OPJ_UINT32)coff,
                    8);   /* COFF A PRECISER !! */
    FUNC4(l_data_header + 16, (OPJ_UINT32)clen,
                    8);   /* CLEN               */
    FUNC3(cio, l_data_header, 3 * 8, p_manager);

    len = (OPJ_UINT32)(FUNC2(cio) - lenp);
    FUNC0(cio, lenp, p_manager);
    FUNC4(l_data_header, len, 4);         /* L                  */
    FUNC3(cio, l_data_header, 4, p_manager);
    FUNC0(cio, lenp + len, p_manager);

}