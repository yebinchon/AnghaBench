
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsICommandParams ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;


 int NSCMD_ALIGN ;
 int NSSTATE_ATTRIBUTE ;
 int * create_nscommand_params () ;
 int do_ns_command (TYPE_2__*,int ,int *) ;
 int nsICommandParams_Release (int *) ;
 int nsICommandParams_SetCStringValue (int *,int ,char const*) ;

__attribute__((used)) static void set_ns_align(HTMLDocument *This, const char *align_str)
{
    nsICommandParams *nsparam;

    if(!This->doc_obj->nscontainer)
        return;

    nsparam = create_nscommand_params();
    nsICommandParams_SetCStringValue(nsparam, NSSTATE_ATTRIBUTE, align_str);

    do_ns_command(This, NSCMD_ALIGN, nsparam);

    nsICommandParams_Release(nsparam);
}
