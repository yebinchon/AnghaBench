#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  input_in_transit; int /*<<< orphan*/  output_in_transit; int /*<<< orphan*/  input; int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(decoder_t *dec)
{
    decoder_sys_t *sys = dec->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;
    MMAL_STATUS_T status;

    FUNC2(dec, "Flushing decoder ports...");
    FUNC1(sys->output);
    FUNC1(sys->input);

    while (FUNC0(&sys->output_in_transit) ||
           FUNC0(&sys->input_in_transit))
        FUNC3(&sys->sem);
}