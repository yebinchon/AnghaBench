#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_8__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; int /*<<< orphan*/ * stream; int /*<<< orphan*/  sink_force; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(audio_output_t *aout, const char *name)
{
    aout_sys_t *sys = aout->sys;

    if (sys->stream == NULL)
    {
        FUNC3(aout, "will connect to sink %s", name);
        FUNC1(sys->sink_force);
        sys->sink_force = FUNC9(name);
        FUNC0(aout, name);
        return 0;
    }

    pa_operation *op;
    uint32_t idx = FUNC6(sys->stream);

    FUNC7(sys->mainloop);
    op = FUNC4(sys->context, idx, name,
                                            NULL, NULL);
    if (FUNC2(op != NULL)) {
        FUNC5(op);
        FUNC3(aout, "moving to sink %s", name);
    } else
        FUNC10(aout, "cannot move sink input", sys->context);
    FUNC8(sys->mainloop);

    return (op != NULL) ? 0 : -1;
}