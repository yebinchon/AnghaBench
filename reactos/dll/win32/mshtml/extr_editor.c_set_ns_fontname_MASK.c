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
typedef  int /*<<< orphan*/  nsICommandParams ;
typedef  int /*<<< orphan*/  HTMLDocument ;

/* Variables and functions */
 int /*<<< orphan*/  NSCMD_FONTFACE ; 
 int /*<<< orphan*/  NSSTATE_ATTRIBUTE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(HTMLDocument *This, const char *fontname)
{
    nsICommandParams *nsparam = FUNC0();

    FUNC3(nsparam, NSSTATE_ATTRIBUTE, fontname);
    FUNC1(This, NSCMD_FONTFACE, nsparam);
    FUNC2(nsparam);
}