#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int /*<<< orphan*/  pf_decode; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_9__ {scalar_t__ is_async; int /*<<< orphan*/  output_sample; int /*<<< orphan*/  mf_handle; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DecodeAsync ; 
 int /*<<< orphan*/  DecodeSync ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_2__* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC9(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys;

    p_sys = p_dec->p_sys = FUNC6(1, sizeof(*p_sys));
    if (!p_sys)
        return VLC_ENOMEM;

    if( FUNC3(FUNC2(NULL, COINIT_MULTITHREADED)) )
    {
        FUNC7(p_sys);
        return VLC_EGENERIC;
    }

    if (FUNC5(&p_sys->mf_handle))
    {
        FUNC8(p_dec, "Failed to load MFT library.");
        goto error;
    }

    if (FUNC4(p_dec))
    {
        FUNC8(p_dec, "Could not find suitable MFT decoder");
        goto error;
    }

    /* Only one output sample is needed, we can allocate one and reuse it. */
    if (FUNC0(p_dec, 0, &p_sys->output_sample))
        goto error;

    p_dec->pf_decode = p_sys->is_async ? DecodeAsync : DecodeSync;

    return VLC_SUCCESS;

error:
    FUNC1(p_this);
    return VLC_EGENERIC;
}