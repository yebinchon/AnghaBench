#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlc_memstream {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
struct TYPE_7__ {TYPE_2__ styles_headers; TYPE_1__ regions_headers; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_memstream*,void**,size_t*) ; 
 scalar_t__ FUNC1 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_memstream*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( demux_sys_t *p_sys, void **p_extra, size_t *pi_extra )
{
    struct vlc_memstream extradata;
    if( FUNC1( &extradata ) )
        return;
    FUNC2( &extradata, "WEBVTT\n\n");
    FUNC3( &extradata, p_sys->regions_headers.p_data,
                                     p_sys->regions_headers.i_data );
    FUNC3( &extradata, p_sys->styles_headers.p_data,
                                     p_sys->styles_headers.i_data );
    FUNC0( &extradata, p_extra, pi_extra );
}