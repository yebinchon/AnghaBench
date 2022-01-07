
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsresult ;
typedef scalar_t__ VARIANT_BOOL ;
struct TYPE_7__ {TYPE_1__* doc_obj; } ;
struct TYPE_6__ {int editor; } ;
struct TYPE_5__ {scalar_t__ usermode; TYPE_2__* nscontainer; } ;
typedef TYPE_3__ HTMLDocument ;


 scalar_t__ EDITMODE ;
 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIEditor_IncrementModificationCount (int ,int) ;
 int nsIEditor_ResetModificationCount (int ) ;

void set_dirty(HTMLDocument *This, VARIANT_BOOL dirty)
{
    nsresult nsres;

    if(This->doc_obj->usermode != EDITMODE || !This->doc_obj->nscontainer || !This->doc_obj->nscontainer->editor)
        return;

    if(dirty) {
        nsres = nsIEditor_IncrementModificationCount(This->doc_obj->nscontainer->editor, 1);
        if(NS_FAILED(nsres))
            ERR("IncrementModificationCount failed: %08x\n", nsres);
    }else {
        nsres = nsIEditor_ResetModificationCount(This->doc_obj->nscontainer->editor);
        if(NS_FAILED(nsres))
            ERR("ResetModificationCount failed: %08x\n", nsres);
    }
}
