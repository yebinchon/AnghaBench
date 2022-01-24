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
struct vlc_h2_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct vlc_h2_parser*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_h2_frame_test_callbacks ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_h2_parser*) ; 
 struct vlc_h2_parser* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
    struct vlc_h2_parser *p;

    p = FUNC4(CTX, &vlc_h2_frame_test_callbacks);
    FUNC0(p != NULL);

    FUNC0(FUNC2(p, FUNC1(), FUNC1(), NULL) == 0);

    FUNC3(p);
}