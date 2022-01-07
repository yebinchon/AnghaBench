
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Installed; scalar_t__ num_clients; scalar_t__ ActionRequest; int Component; int Enabled; } ;
struct TYPE_5__ {scalar_t__ need_rollback; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSICOMPONENT ;
typedef scalar_t__ INSTALLSTATE ;


 scalar_t__ INSTALLSTATE_ABSENT ;
 scalar_t__ INSTALLSTATE_UNKNOWN ;
 int TRACE (char*,int ,...) ;
 int debugstr_w (int ) ;

INSTALLSTATE msi_get_component_action( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    if (!comp->Enabled)
    {
        TRACE("component is disabled: %s\n", debugstr_w(comp->Component));
        return INSTALLSTATE_UNKNOWN;
    }
    if (package->need_rollback) return comp->Installed;
    if (comp->num_clients > 0 && comp->ActionRequest == INSTALLSTATE_ABSENT)
    {
        TRACE("%s has %u clients left\n", debugstr_w(comp->Component), comp->num_clients);
        return INSTALLSTATE_UNKNOWN;
    }
    return comp->ActionRequest;
}
