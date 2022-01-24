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
struct TYPE_4__ {scalar_t__ psz_spu_sources; int /*<<< orphan*/  p_deinterlace_cfg; scalar_t__ psz_deinterlace; } ;
struct TYPE_5__ {TYPE_1__ video; scalar_t__ psz_filters; } ;
typedef  TYPE_2__ sout_filters_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline
void FUNC2( sout_filters_config_t *p_cfg )
{
    FUNC1( p_cfg->psz_filters );
    if( p_cfg->video.psz_deinterlace )
    {
        FUNC1( p_cfg->video.psz_deinterlace );
        FUNC0( p_cfg->video.p_deinterlace_cfg );
    }
    FUNC1( p_cfg->video.psz_spu_sources );
}