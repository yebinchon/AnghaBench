
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct dll_redirect* info; } ;
struct dll_redirect {unsigned int num_dlls; scalar_t__ MagicMarker; int id; int entities; struct dll_redirect* compat_contexts; struct dll_redirect* directory; TYPE_1__ manifest; struct dll_redirect* dlls; struct dll_redirect* hash; struct dll_redirect* name; } ;
struct assembly {unsigned int num_dlls; scalar_t__ MagicMarker; int id; int entities; struct assembly* compat_contexts; struct assembly* directory; TYPE_1__ manifest; struct assembly* dlls; struct assembly* hash; struct assembly* name; } ;
struct TYPE_9__ {struct dll_redirect* info; } ;
struct TYPE_8__ {struct dll_redirect* info; } ;
struct TYPE_10__ {unsigned int num_assemblies; struct dll_redirect* progid_section; struct dll_redirect* clrsurrogate_section; struct dll_redirect* ifaceps_section; struct dll_redirect* comserver_section; struct dll_redirect* tlib_section; struct dll_redirect* wndclass_section; struct dll_redirect* dllredirect_section; struct dll_redirect* assemblies; TYPE_3__ appdir; TYPE_2__ config; int RefCount; } ;
typedef struct dll_redirect* PACTIVATION_CONTEXT_WRAPPED ;
typedef TYPE_4__ ACTIVATION_CONTEXT ;


 int ACTIVATION_CONTEXT_WRAPPED ;
 int ActivationContext ;
 struct dll_redirect* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int InterlockedExchangeAdd (int *,int) ;
 int RtlFreeHeap (int ,int ,struct dll_redirect*) ;
 int RtlGetProcessHeap () ;
 int free_assembly_identity (int *) ;
 int free_entity_array (int *) ;

__attribute__((used)) static void actctx_release( ACTIVATION_CONTEXT *actctx )
{
    PACTIVATION_CONTEXT_WRAPPED pActual;

    if (InterlockedExchangeAdd(&actctx->RefCount, -1) == 1)
    {
        unsigned int i, j;

        for (i = 0; i < actctx->num_assemblies; i++)
        {
            struct assembly *assembly = &actctx->assemblies[i];
            for (j = 0; j < assembly->num_dlls; j++)
            {
                struct dll_redirect *dll = &assembly->dlls[j];
                free_entity_array( &dll->entities );
                RtlFreeHeap( RtlGetProcessHeap(), 0, dll->name );
                RtlFreeHeap( RtlGetProcessHeap(), 0, dll->hash );
            }
            RtlFreeHeap( RtlGetProcessHeap(), 0, assembly->dlls );
            RtlFreeHeap( RtlGetProcessHeap(), 0, assembly->manifest.info );
            RtlFreeHeap( RtlGetProcessHeap(), 0, assembly->directory );
            RtlFreeHeap( RtlGetProcessHeap(), 0, assembly->compat_contexts );
            free_entity_array( &assembly->entities );
            free_assembly_identity(&assembly->id);
        }
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->config.info );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->appdir.info );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->assemblies );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->dllredirect_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->wndclass_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->tlib_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->comserver_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->ifaceps_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->clrsurrogate_section );
        RtlFreeHeap( RtlGetProcessHeap(), 0, actctx->progid_section );

        pActual = CONTAINING_RECORD(actctx, ACTIVATION_CONTEXT_WRAPPED, ActivationContext);
        pActual->MagicMarker = 0;
        RtlFreeHeap(RtlGetProcessHeap(), 0, pActual);
    }
}
