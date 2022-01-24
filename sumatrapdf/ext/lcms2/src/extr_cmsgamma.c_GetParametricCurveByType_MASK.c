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
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_6__ {struct TYPE_6__* Next; } ;
typedef  TYPE_1__ _cmsParametricCurvesCollection ;
struct TYPE_7__ {TYPE_1__* ParametricCurves; } ;
typedef  TYPE_2__ _cmsCurvesPluginChunkType ;

/* Variables and functions */
 int /*<<< orphan*/  CurvesPlugin ; 
 TYPE_1__ DefaultCurves ; 
 int FUNC0 (int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
_cmsParametricCurvesCollection *FUNC2(cmsContext ContextID, int Type, int* index)
{
    _cmsParametricCurvesCollection* c;
    int Position;
    _cmsCurvesPluginChunkType* ctx = ( _cmsCurvesPluginChunkType*) FUNC1(ContextID, CurvesPlugin);

    for (c = ctx->ParametricCurves; c != NULL; c = c ->Next) {

        Position = FUNC0(Type, c);

        if (Position != -1) {
            if (index != NULL)
                *index = Position;
            return c;
        }
    }
    // If none found, revert for defaults
    for (c = &DefaultCurves; c != NULL; c = c ->Next) {

        Position = FUNC0(Type, c);

        if (Position != -1) {
            if (index != NULL)
                *index = Position;
            return c;
        }
    }

    return NULL;
}