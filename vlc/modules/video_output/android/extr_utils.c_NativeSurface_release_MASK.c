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
struct TYPE_3__ {int /*<<< orphan*/  p_dl_handle; } ;
typedef  TYPE_1__ NativeSurface ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(ANativeWindow* p_anw)
{
    NativeSurface *p_ns = (NativeSurface *)p_anw;

    FUNC0(p_ns->p_dl_handle);
    FUNC1(p_ns);
}