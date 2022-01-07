
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_9__ {int is_doc_uri; } ;
typedef TYPE_2__ nsWineURI ;
struct TYPE_10__ {TYPE_1__* doc_obj; } ;
struct TYPE_8__ {int nscontainer; } ;
typedef int IUri ;
typedef TYPE_3__ HTMLOuterWindow ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRUE ;
 int create_nsuri (int *,TYPE_3__*,int ,int *,TYPE_2__**) ;

HRESULT create_doc_uri(HTMLOuterWindow *window, IUri *iuri, nsWineURI **ret)
{
    nsWineURI *uri;
    nsresult nsres;

    nsres = create_nsuri(iuri, window, window->doc_obj->nscontainer, ((void*)0), &uri);
    if(NS_FAILED(nsres))
        return E_FAIL;

    uri->is_doc_uri = TRUE;

    *ret = uri;
    return S_OK;
}
