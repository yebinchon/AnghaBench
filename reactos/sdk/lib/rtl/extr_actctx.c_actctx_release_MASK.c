#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct dll_redirect* info; } ;
struct dll_redirect {unsigned int num_dlls; scalar_t__ MagicMarker; int /*<<< orphan*/  id; int /*<<< orphan*/  entities; struct dll_redirect* compat_contexts; struct dll_redirect* directory; TYPE_1__ manifest; struct dll_redirect* dlls; struct dll_redirect* hash; struct dll_redirect* name; } ;
struct assembly {unsigned int num_dlls; scalar_t__ MagicMarker; int /*<<< orphan*/  id; int /*<<< orphan*/  entities; struct assembly* compat_contexts; struct assembly* directory; TYPE_1__ manifest; struct assembly* dlls; struct assembly* hash; struct assembly* name; } ;
struct TYPE_9__ {struct dll_redirect* info; } ;
struct TYPE_8__ {struct dll_redirect* info; } ;
struct TYPE_10__ {unsigned int num_assemblies; struct dll_redirect* progid_section; struct dll_redirect* clrsurrogate_section; struct dll_redirect* ifaceps_section; struct dll_redirect* comserver_section; struct dll_redirect* tlib_section; struct dll_redirect* wndclass_section; struct dll_redirect* dllredirect_section; struct dll_redirect* assemblies; TYPE_3__ appdir; TYPE_2__ config; int /*<<< orphan*/  RefCount; } ;
typedef  struct dll_redirect* PACTIVATION_CONTEXT_WRAPPED ;
typedef  TYPE_4__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_WRAPPED ; 
 int /*<<< orphan*/  ActivationContext ; 
 struct dll_redirect* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dll_redirect*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( ACTIVATION_CONTEXT *actctx )
{
    PACTIVATION_CONTEXT_WRAPPED pActual;

    if (FUNC1(&actctx->RefCount, -1) == 1)
    {
        unsigned int i, j;

        for (i = 0; i < actctx->num_assemblies; i++)
        {
            struct assembly *assembly = &actctx->assemblies[i];
            for (j = 0; j < assembly->num_dlls; j++)
            {
                struct dll_redirect *dll = &assembly->dlls[j];
                FUNC5( &dll->entities );
                FUNC2( FUNC3(), 0, dll->name );
                FUNC2( FUNC3(), 0, dll->hash );
            }
            FUNC2( FUNC3(), 0, assembly->dlls );
            FUNC2( FUNC3(), 0, assembly->manifest.info );
            FUNC2( FUNC3(), 0, assembly->directory );
            FUNC2( FUNC3(), 0, assembly->compat_contexts );
            FUNC5( &assembly->entities );
            FUNC4(&assembly->id);
        }
        FUNC2( FUNC3(), 0, actctx->config.info );
        FUNC2( FUNC3(), 0, actctx->appdir.info );
        FUNC2( FUNC3(), 0, actctx->assemblies );
        FUNC2( FUNC3(), 0, actctx->dllredirect_section );
        FUNC2( FUNC3(), 0, actctx->wndclass_section );
        FUNC2( FUNC3(), 0, actctx->tlib_section );
        FUNC2( FUNC3(), 0, actctx->comserver_section );
        FUNC2( FUNC3(), 0, actctx->ifaceps_section );
        FUNC2( FUNC3(), 0, actctx->clrsurrogate_section );
        FUNC2( FUNC3(), 0, actctx->progid_section );

        pActual = FUNC0(actctx, ACTIVATION_CONTEXT_WRAPPED, ActivationContext);
        pActual->MagicMarker = 0;
        FUNC2(FUNC3(), 0, pActual);
    }
}