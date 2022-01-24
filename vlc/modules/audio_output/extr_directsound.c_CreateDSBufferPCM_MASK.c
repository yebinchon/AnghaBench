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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
typedef  int /*<<< orphan*/  aout_stream_sys_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int,int,int) ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  VLC_CODEC_FL32 ; 
 int /*<<< orphan*/  VLC_CODEC_S16N ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC2 (int) ; 

__attribute__((used)) static HRESULT FUNC3( vlc_object_t *obj, aout_stream_sys_t *sys,
                                  vlc_fourcc_t *i_format, int i_channels,
                                  int i_rate, bool b_probe )
{
    HRESULT hr;
    unsigned i_nb_channels = FUNC2( i_channels );

    if( FUNC1( obj, "directx-audio-float32" ) )
    {
        hr = FUNC0( obj, sys, VLC_CODEC_FL32, i_channels,
                             i_nb_channels, i_rate, b_probe );
        if( hr == DS_OK )
        {
            *i_format = VLC_CODEC_FL32;
            return DS_OK;
        }
    }

    hr = FUNC0( obj, sys, VLC_CODEC_S16N, i_channels, i_nb_channels,
                         i_rate, b_probe );
    if( hr == DS_OK )
    {
        *i_format = VLC_CODEC_S16N;
        return DS_OK;
    }

    return hr;
}