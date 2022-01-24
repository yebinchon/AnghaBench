#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  picSys; int /*<<< orphan*/ ** d3dsampState; int /*<<< orphan*/ * pVertexShaderConstants; int /*<<< orphan*/ * pIndexBuffer; int /*<<< orphan*/ * pVertexBuffer; int /*<<< orphan*/ ** pPixelShaderConstants; } ;
typedef  TYPE_1__ d3d_quad_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t PS_CONST_COLORSPACE ; 
 size_t PS_CONST_LUMI_BOUNDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(d3d_quad_t *quad)
{
    if (quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS])
    {
        FUNC1(quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS]);
        quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS] = NULL;
    }
    if (quad->pPixelShaderConstants[PS_CONST_COLORSPACE])
    {
        FUNC1(quad->pPixelShaderConstants[PS_CONST_COLORSPACE]);
        quad->pPixelShaderConstants[PS_CONST_COLORSPACE] = NULL;
    }
    if (quad->pVertexBuffer)
    {
        FUNC1(quad->pVertexBuffer);
        quad->pVertexBuffer = NULL;
    }
    if (quad->pIndexBuffer)
    {
        FUNC1(quad->pIndexBuffer);
        quad->pIndexBuffer = NULL;
    }
    if (quad->pVertexShaderConstants)
    {
        FUNC1(quad->pVertexShaderConstants);
        quad->pVertexShaderConstants = NULL;
    }
    FUNC0(quad);
    for (size_t i=0; i<2; i++)
    {
        if (quad->d3dsampState[i])
        {
            FUNC2(quad->d3dsampState[i]);
            quad->d3dsampState[i] = NULL;
        }
    }
    FUNC3(&quad->picSys);
}