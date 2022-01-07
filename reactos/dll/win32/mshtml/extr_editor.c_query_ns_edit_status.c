
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsICommandParams ;
typedef scalar_t__ cpp_bool ;
struct TYPE_7__ {TYPE_2__* doc_obj; TYPE_1__* window; } ;
struct TYPE_6__ {scalar_t__ usermode; scalar_t__ nscontainer; } ;
struct TYPE_5__ {scalar_t__ readystate; } ;
typedef TYPE_3__ HTMLDocument ;
typedef int DWORD ;


 scalar_t__ EDITMODE ;
 scalar_t__ FALSE ;
 int NSSTATE_ALL ;
 int OLECMDF_ENABLED ;
 int OLECMDF_LATCHED ;
 int OLECMDF_SUPPORTED ;
 scalar_t__ READYSTATE_INTERACTIVE ;
 int * create_nscommand_params () ;
 int get_ns_command_state (scalar_t__,char const*,int *) ;
 int nsICommandParams_GetBooleanValue (int *,int ,scalar_t__*) ;
 int nsICommandParams_Release (int *) ;

__attribute__((used)) static DWORD query_ns_edit_status(HTMLDocument *This, const char *nscmd)
{
    nsICommandParams *nsparam;
    cpp_bool b = FALSE;

    if(This->doc_obj->usermode != EDITMODE || This->window->readystate < READYSTATE_INTERACTIVE)
        return OLECMDF_SUPPORTED;

    if(This->doc_obj->nscontainer && nscmd) {
        nsparam = create_nscommand_params();
        get_ns_command_state(This->doc_obj->nscontainer, nscmd, nsparam);

        nsICommandParams_GetBooleanValue(nsparam, NSSTATE_ALL, &b);

        nsICommandParams_Release(nsparam);
    }

    return OLECMDF_SUPPORTED | OLECMDF_ENABLED | (b ? OLECMDF_LATCHED : 0);
}
