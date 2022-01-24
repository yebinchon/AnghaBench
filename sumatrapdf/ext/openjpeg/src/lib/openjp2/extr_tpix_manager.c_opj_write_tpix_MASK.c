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
typedef  int /*<<< orphan*/  opj_codestream_info_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  int OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 scalar_t__ JPIP_TPIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(int coff,
                   opj_codestream_info_t cstr_info,
                   int j2klen, opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;

    lenp = FUNC2(cio);
    FUNC1(cio, 4, p_manager);
    FUNC4(l_data_header, JPIP_TPIX, 4); /* TPIX */
    FUNC3(cio, l_data_header, 4, p_manager);

    FUNC5(coff, 0, cstr_info, j2klen, cio, p_manager);

    len = (OPJ_UINT32)(FUNC2(cio) - lenp);

    FUNC1(cio, lenp, p_manager);
    FUNC4(l_data_header, len, 4); /* L              */
    FUNC3(cio, l_data_header, 4, p_manager);
    FUNC0(cio, lenp + len, p_manager);

    return (int)len;
}