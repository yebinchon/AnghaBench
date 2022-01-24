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
typedef  int /*<<< orphan*/  opj_sparse_array_int32_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int OPJ_UINT32 ;
typedef  int OPJ_INT32 ;
typedef  int OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int*,int,int,int /*<<< orphan*/ ) ; 

int FUNC6()
{
    OPJ_UINT32 i, j, w, h;
    OPJ_INT32 buffer[ 99 * 101 ];
    OPJ_BOOL ret;
    opj_sparse_array_int32_t* sa;

    sa = FUNC2(0, 1, 1, 1);
    FUNC0(sa == NULL);
    FUNC3(sa);

    sa = FUNC2(1, 0, 1, 1);
    FUNC0(sa == NULL);

    sa = FUNC2(1, 1, 0, 1);
    FUNC0(sa == NULL);

    sa = FUNC2(1, 1, 1, 0);
    FUNC0(sa == NULL);

    sa = FUNC2(99, 101, ~0U, ~0U);
    FUNC0(sa == NULL);

    sa = FUNC2(99, 101, 15, 17);
    FUNC3(sa);

    sa = FUNC2(99, 101, 15, 17);
    ret = FUNC4(sa, 0, 0, 0, 1, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 0, 0, 1, 0, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 0, 0, 100, 1, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 0, 0, 1, 102, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 1, 0, 0, 1, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 0, 1, 1, 0, buffer, 1, 1, OPJ_FALSE);
    FUNC0(!ret);
    ret = FUNC4(sa, 99, 101, 99, 101, buffer, 1, 1,
                                      OPJ_FALSE);
    FUNC0(!ret);

    buffer[0] = 1;
    ret = FUNC4(sa, 0, 0, 1, 1, buffer, 1, 1, OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 0);

    FUNC1(buffer, 0xFF, sizeof(buffer));
    ret = FUNC4(sa, 0, 0, 99, 101, buffer, 1, 99, OPJ_FALSE);
    FUNC0(ret);
    for (i = 0; i < 99 * 101; i++) {
        FUNC0(buffer[i] == 0);
    }

    buffer[0] = 1;
    ret = FUNC5(sa, 4, 5, 4 + 1, 5 + 1, buffer, 1, 1,
                                       OPJ_FALSE);
    FUNC0(ret);

    buffer[0] = 2;
    ret = FUNC5(sa, 4, 5, 4 + 1, 5 + 1, buffer, 1, 1,
                                       OPJ_FALSE);
    FUNC0(ret);

    buffer[0] = 0;
    buffer[1] = 0xFF;
    ret = FUNC4(sa, 4, 5, 4 + 1, 5 + 1, buffer, 1, 1,
                                      OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 2);
    FUNC0(buffer[1] == 0xFF);

    buffer[0] = 0xFF;
    buffer[1] = 0xFF;
    buffer[2] = 0xFF;
    ret = FUNC4(sa, 4, 5, 4 + 1, 5 + 2, buffer, 0, 1,
                                      OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 2);
    FUNC0(buffer[1] == 0);
    FUNC0(buffer[2] == 0xFF);

    buffer[0] = 3;
    ret = FUNC5(sa, 4, 5, 4 + 1, 5 + 1, buffer, 0, 1,
                                       OPJ_FALSE);
    FUNC0(ret);

    buffer[0] = 0;
    buffer[1] = 0xFF;
    ret = FUNC4(sa, 4, 5, 4 + 1, 5 + 1, buffer, 1, 1,
                                      OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 3);
    FUNC0(buffer[1] == 0xFF);

    w = 15 + 1;
    h = 17 + 1;
    FUNC1(buffer, 0xFF, sizeof(buffer));
    ret = FUNC4(sa, 2, 1, 2 + w, 1 + h, buffer, 1, w,
                                      OPJ_FALSE);
    FUNC0(ret);
    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            if (i == 4 - 2 && j == 5 - 1) {
                FUNC0(buffer[ j * w + i ] == 3);
            } else {
                FUNC0(buffer[ j * w + i ] == 0);
            }
        }
    }

    FUNC3(sa);


    sa = FUNC2(99, 101, 15, 17);
    FUNC1(buffer, 0xFF, sizeof(buffer));
    ret = FUNC4(sa, 0, 0, 2, 1, buffer, 2, 4, OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 0);
    FUNC0(buffer[1] == -1);
    FUNC0(buffer[2] == 0);

    buffer[0] = 1;
    buffer[2] = 3;
    ret = FUNC5(sa, 0, 0, 2, 1, buffer, 2, 4, OPJ_FALSE);
    FUNC0(ret);

    FUNC1(buffer, 0xFF, sizeof(buffer));
    ret = FUNC4(sa, 0, 0, 2, 1, buffer, 2, 4, OPJ_FALSE);
    FUNC0(ret);
    FUNC0(buffer[0] == 1);
    FUNC0(buffer[1] == -1);
    FUNC0(buffer[2] == 3);

    FUNC3(sa);

    return 0;
}