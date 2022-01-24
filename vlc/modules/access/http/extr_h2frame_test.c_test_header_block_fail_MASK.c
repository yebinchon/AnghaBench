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
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vlc_h2_frame* FUNC1 () ; 
 struct vlc_h2_frame* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct vlc_h2_frame*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    struct vlc_h2_frame *hf = FUNC2(true);
    struct vlc_h2_frame *pf = FUNC1();

    /* Check what happens if non-CONTINUATION frame after HEADERS */
    FUNC0(hf != NULL && hf->next != NULL && pf != NULL);
    pf->next = hf->next;
    hf->next = pf;
    FUNC0(FUNC3(CTX, hf, NULL) == 0);
}