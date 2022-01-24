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
struct vlc_h2_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int counter ; 
 int expect_hello ; 
 int /*<<< orphan*/  fake_tls ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx ; 
 int send_failure ; 
 struct vlc_h2_output* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_h2_output*) ; 
 int FUNC6 (struct vlc_h2_output*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vlc_h2_output*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(void)
{
    struct vlc_h2_output *out;

    /* Dummy */
    out = FUNC4(&fake_tls, false);
    FUNC1(out != NULL);
    FUNC5(out);

    FUNC9(&rx, 0);
    out = FUNC4(&fake_tls, expect_hello = true);
    FUNC1(out != NULL);
    FUNC5(out);
    FUNC8(&rx);

    /* Success */
    FUNC9(&rx, 0);
    out = FUNC4(&fake_tls, false);
    FUNC1(out != NULL);
    FUNC1(FUNC7(out, NULL) == -1);
    FUNC1(FUNC7(out, FUNC2(0)) == 0);
    FUNC1(FUNC7(out, FUNC2(1)) == 0);
    FUNC1(FUNC6(out, NULL) == -1);
    FUNC1(FUNC6(out, FUNC2(2)) == 0);
    FUNC1(FUNC6(out, FUNC2(3)) == 0);
    FUNC1(FUNC6(out, FUNC3(FUNC2(4), FUNC2(5),
                                              FUNC2(6), NULL)) == 0);
    FUNC1(FUNC6(out, FUNC2(7)) == 0);
    for (unsigned i = 0; i < 8; i++)
        FUNC10(&rx);

    FUNC1(FUNC7(out, FUNC2(8)) == 0);
    FUNC1(FUNC6(out, FUNC2(9)) == 0);

    FUNC5(out);
    FUNC8(&rx);

    /* Failure */
    send_failure = true;

    FUNC9(&rx, 0);
    counter = 10;
    out = FUNC4(&fake_tls, false);
    FUNC1(out != NULL);

    FUNC1(FUNC6(out, FUNC2(10)) == 0);
    for (unsigned char i = 11; FUNC6(out, FUNC2(i)) == 0; i++)
        FUNC11(FUNC0(100)); /* eventually, it should start failing */
    FUNC1(FUNC6(out, FUNC2(0)) == -1);
    FUNC1(FUNC7(out, FUNC2(0)) == -1);
    FUNC5(out);
    FUNC8(&rx);

    /* Failure during hello */
    FUNC9(&rx, 0);
    counter = 0;
    out = FUNC4(&fake_tls, expect_hello = true);
    FUNC1(out != NULL);
    FUNC10(&rx);

    for (unsigned char i = 1; FUNC7(out, FUNC2(i)) == 0; i++)
        FUNC11(FUNC0(100));
    FUNC1(FUNC6(out, FUNC2(0)) == -1);
    FUNC1(FUNC7(out, FUNC2(0)) == -1);
    FUNC5(out);
    FUNC8(&rx);

    return 0;
}