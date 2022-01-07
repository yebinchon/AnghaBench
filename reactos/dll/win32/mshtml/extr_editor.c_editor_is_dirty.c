
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cpp_bool ;
struct TYPE_7__ {TYPE_2__* doc_obj; } ;
struct TYPE_6__ {TYPE_1__* nscontainer; } ;
struct TYPE_5__ {int editor; } ;
typedef TYPE_3__ HTMLDocument ;
typedef int HRESULT ;


 int S_FALSE ;
 int S_OK ;
 int nsIEditor_GetDocumentModified (int ,scalar_t__*) ;

HRESULT editor_is_dirty(HTMLDocument *This)
{
    cpp_bool modified;

    if(!This->doc_obj->nscontainer || !This->doc_obj->nscontainer->editor)
        return S_FALSE;

    nsIEditor_GetDocumentModified(This->doc_obj->nscontainer->editor, &modified);

    return modified ? S_OK : S_FALSE;
}
