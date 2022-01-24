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
struct toxav_thread_data {int sig; int /*<<< orphan*/  BobAV; int /*<<< orphan*/  AliceAV; } ;

/* Variables and functions */
 int /*<<< orphan*/  CV_WINDOW_AUTOSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdout ; 

void *FUNC10 (void *data)
{
    struct toxav_thread_data *data_cast = data;
#if defined TEST_TRANSFER_V && TEST_TRANSFER_V == 1
    cvNamedWindow(vdout, CV_WINDOW_AUTOSIZE);
#endif

    while (data_cast->sig == 0) {
        FUNC8(data_cast->AliceAV);
        FUNC8(data_cast->BobAV);
        int rc = FUNC0(FUNC9(data_cast->AliceAV), FUNC9(data_cast->BobAV));

        FUNC6("\rIteration interval: %d            ", rc);
        FUNC5(stdout);

#if defined TEST_TRANSFER_V && TEST_TRANSFER_V == 1

        if (!rc)
            rc = 1;

        cvWaitKey(rc);
#else
        FUNC1(rc);
#endif
    }

    data_cast->sig = 1;

#if defined TEST_TRANSFER_V && TEST_TRANSFER_V == 1
    cvDestroyWindow(vdout);
#endif

    FUNC7(NULL);
}