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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/  stream; int /*<<< orphan*/ * client; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    if( FUNC3( sys->client == NULL ) )
        return;

    FUNC0();
    HRESULT hr = FUNC2(sys->stream, block);
    FUNC1();

    FUNC4(aout, hr);
    (void) date;
}