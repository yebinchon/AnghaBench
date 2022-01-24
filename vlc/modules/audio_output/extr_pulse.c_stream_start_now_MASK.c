#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_5__ {int /*<<< orphan*/ * trigger; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(pa_stream *s, audio_output_t *aout)
{
    pa_operation *op;

    FUNC0 ( ((aout_sys_t *)aout->sys)->trigger == NULL );

    op = FUNC3(s, 0, NULL, NULL);
    if (op != NULL)
        FUNC2(op);
    op = FUNC4(s, NULL, NULL);
    if (FUNC1(op != NULL))
        FUNC2(op);
}