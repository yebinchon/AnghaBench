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
typedef  int uint8_t ;
struct params_s {int lavc; int packets_count; int** packets; int* packets_sizes; int /*<<< orphan*/ * p_append; scalar_t__ i_append; void* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 void* VLC_CODEC_VORBIS ; 
 int XIPH_MAX_HEADER_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  test_xiph_AppendHeaders ; 
 int /*<<< orphan*/  test_xiph_CountHeaders ; 
 int /*<<< orphan*/  test_xiph_CountLavcHeaders ; 
 int /*<<< orphan*/  test_xiph_IsLavcFormat ; 
 int /*<<< orphan*/  test_xiph_PackHeaders ; 
 int /*<<< orphan*/  test_xiph_SplitHeaders ; 
 int /*<<< orphan*/  test_xiph_SplitLavcHeaders ; 
 int* xiph0 ; 
 int* xiph1 ; 
 int* xiphlavc0 ; 

int FUNC4(void)
{
    struct params_s params;

    params.lavc = false;
    params.codec = VLC_CODEC_VORBIS;

    /* check if we can detect lavc format */
    FUNC0("0", test_xiph_IsLavcFormat, xiph0, 0, OK);
    FUNC0("1", test_xiph_IsLavcFormat, xiph0, 1, OK);
    FUNC0("2", test_xiph_IsLavcFormat, xiph0, 2, OK);
    FUNC0("3", test_xiph_IsLavcFormat, xiph0, 6, OK);
    FUNC0("lavc0", test_xiph_IsLavcFormat, xiph0, 0, OK);
    FUNC0("lavc1", test_xiph_IsLavcFormat, xiph0, 1, OK);
    FUNC0("lavc2", test_xiph_IsLavcFormat, xiph0, 6, OK);
    FUNC0("lavc3", test_xiph_IsLavcFormat, xiphlavc0, 0, OK);
    FUNC0("lavc4", test_xiph_IsLavcFormat, xiphlavc0, 1, OK);
    params.lavc = true;
    FUNC0("lavc5", test_xiph_IsLavcFormat, xiphlavc0, 37, OK);
    params.codec = 0;
    params.lavc = false;
    FUNC0("lavc6", test_xiph_IsLavcFormat, xiphlavc0, 37, OK);

    /* check count and return 0 on error */
    params.packets_count = 0;
    FUNC0("0", test_xiph_CountHeaders, xiph0, 0, OK);
    params.packets_count = 1;
    FUNC0("1", test_xiph_CountHeaders, xiph0, 1, OK);
    params.packets_count = 3;
    FUNC0("2", test_xiph_CountHeaders, xiph1, 11, OK);

    /* check lavc only valid with count == 3 */
    params.packets_count = 3;
    params.codec = VLC_CODEC_VORBIS;
    FUNC0("lavc0", test_xiph_CountLavcHeaders, xiphlavc0, 37, OK);
    params.packets_count = 0;
    FUNC0("lavc1", test_xiph_CountLavcHeaders, xiphlavc0, 35, OK);
    FUNC0("lavc2", test_xiph_CountLavcHeaders, xiphlavc0, 0, OK);

    /* check split on single/trail packet (no index) */
    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    params.packets_count = 1;
    FUNC0("0", test_xiph_SplitHeaders, xiph0, 6, OK);
    params.packets_sizes[0] = 0;
    FUNC0("1", test_xiph_SplitHeaders, xiph0, 1, OK);

    /* check split */
    params.packets_count = 3;
    params.packets[0] = &xiph1[3];
    params.packets_sizes[0] = 5;
    params.packets[1] = &xiph1[8];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiph1[9];
    params.packets_sizes[2] = 2;
    FUNC0("2", test_xiph_SplitHeaders, xiph1, 11, OK);
    FUNC0("3", test_xiph_SplitHeaders, xiph1, 7, FAIL);

    /* check variable length decoding */
    uint8_t xiph2[265];
    FUNC3(xiph2, 0xFF, 265);
    FUNC0("4", test_xiph_SplitHeaders, xiph2, 265, FAIL);
    xiph2[0] = 1;
    FUNC0("5", test_xiph_SplitHeaders, xiph2, 265, FAIL);
    xiph2[2] = 1;
    params.packets_count = 2;
    params.packets[0] = &xiph2[3];
    params.packets_sizes[0] = 256;
    params.packets[1] = &xiph2[3+256];
    params.packets_sizes[1] = 6;
    FUNC0("6", test_xiph_SplitHeaders, xiph2, 265, OK);
    /* /!\ xiph2 content reused in another test below */

    /* check lavc split */
    params.packets_count = 3;
    params.packets[0] = &xiphlavc0[2];
    params.packets_sizes[0] = 30;
    params.packets[1] = &xiphlavc0[34];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiphlavc0[37];
    params.packets_sizes[2] = 0;
    FUNC0("lavc0", test_xiph_SplitLavcHeaders, xiphlavc0, 37, OK);
    FUNC0("lavc1", test_xiph_SplitLavcHeaders, xiphlavc0, 36, FAIL);
    FUNC0("lavc2", test_xiph_SplitLavcHeaders, xiphlavc0, 31, FAIL);

    /* Test single packet packing */
    params.packets_count = XIPH_MAX_HEADER_COUNT + 1;
    FUNC0("0", test_xiph_PackHeaders, xiph0, 6, FAIL);
    params.packets_count = 1;
    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    FUNC0("1", test_xiph_PackHeaders, xiph0, 6, OK);

    /* Test multiple packets packing */
    params.packets_count = 0;
    FUNC0("2", test_xiph_PackHeaders, xiph1, 11, FAIL);
    params.packets_count = 3;
    params.packets[0] = &xiph1[3];
    params.packets_sizes[0] = 5;
    params.packets[1] = &xiph1[8];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiph1[9];
    params.packets_sizes[2] = 2;
    FUNC0("3", test_xiph_PackHeaders, xiph1, 11, OK);

    /* Test multiple packets packing variable length encoding */
    params.packets_count = 2;
    params.packets[0] = &xiph2[3];
    params.packets_sizes[0] = 256;
    params.packets[1] = &xiph2[3+256];
    params.packets_sizes[1] = 6;
    FUNC0("4", test_xiph_PackHeaders, xiph2, 265, OK);

    /* Appending */
    params.i_append = 0;
    params.p_append = NULL;
    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    FUNC0("0", test_xiph_AppendHeaders, xiph0, 6, OK);
    /* append second time */
    xiph2[0] = 1;
    xiph2[1] = 5;
    FUNC2(&xiph2[2+0], &xiph0[1], 5);
    FUNC2(&xiph2[2+5], &xiph0[1], 5);
    FUNC0("1", test_xiph_AppendHeaders, xiph2, 12, OK);
    /* check append array overflow */
    FUNC1(params.p_append);
    params.i_append = 0;
    params.p_append = NULL;
    for(size_t i=0; i<=XIPH_MAX_HEADER_COUNT; i++)
    {
        params.packets_sizes[0] = 0;
        xiph2[0] = i;
        xiph2[1 + i] = 0;
        FUNC0("2", test_xiph_AppendHeaders, xiph2, 1 + i,
            ((i < XIPH_MAX_HEADER_COUNT) ? OK : FAIL) );
    }

    FUNC1(params.p_append);

    return 0;
}