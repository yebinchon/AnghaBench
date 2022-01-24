#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_7__ {int /*<<< orphan*/ * client; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  IAudioClient ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_OUTPUT ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 intptr_t FUNC1 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(audio_output_t *aout, const char* psz_device)
{
    if( psz_device == NULL )
        return VLC_EGENERIC;
    char* psz_end;
    aout_sys_t* sys = aout->sys;
    intptr_t ptr = FUNC1( psz_device, &psz_end, 16 );
    if ( *psz_end != 0 )
        return VLC_EGENERIC;
    if (sys->client == (IAudioClient*)ptr)
        return VLC_SUCCESS;
    sys->client = (IAudioClient*)ptr;
    FUNC2( FUNC3(aout), "winstore-client", sys->client );
    FUNC0( aout, AOUT_RESTART_OUTPUT );
    return VLC_SUCCESS;
}