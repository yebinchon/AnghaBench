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
struct TYPE_4__ {unsigned int surface_count; scalar_t__ video_context; scalar_t__ decoder; } ;
struct TYPE_5__ {int /*<<< orphan*/  hd3d; int /*<<< orphan*/  d3d_dev; TYPE_1__ hw; scalar_t__ d3ddec; scalar_t__* renderSrc; scalar_t__* hw_surface; } ;
typedef  TYPE_2__ vlc_va_sys_t ;
typedef  int /*<<< orphan*/  ID3D11Resource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int D3D11_MAX_SHADER_VIEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(void *opaque)
{
    vlc_va_sys_t *sys = opaque;
    if (sys->hw_surface[0]) {
        ID3D11Resource *p_texture;
        FUNC5( sys->hw_surface[0], &p_texture );
        FUNC2(p_texture);
        FUNC2(p_texture);
        for (unsigned i = 0; i < sys->hw.surface_count; i++)
        {
            FUNC6( sys->hw_surface[i] );
            for (int j = 0; j < D3D11_MAX_SHADER_VIEW; j++)
            {
                if (sys->renderSrc[i*D3D11_MAX_SHADER_VIEW + j])
                    FUNC3(sys->renderSrc[i*D3D11_MAX_SHADER_VIEW + j]);
            }
        }
    }
    if (sys->hw.decoder)
        FUNC7(sys->hw.decoder);

    if (sys->d3ddec)
        FUNC8(sys->d3ddec);
    if (sys->hw.video_context)
        FUNC4(sys->hw.video_context);
    FUNC1( &sys->d3d_dev );

    FUNC0( &sys->hd3d );

    FUNC9(sys);
}