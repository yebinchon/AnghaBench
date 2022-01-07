
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_10__ {TYPE_1__* uri; } ;
typedef TYPE_2__ nsChannel ;
struct TYPE_12__ {int basedoc; int client; } ;
struct TYPE_11__ {TYPE_4__* doc; } ;
struct TYPE_9__ {int uri; } ;
typedef TYPE_3__ NSContainer ;
typedef TYPE_4__ HTMLDocumentObj ;
typedef int HRESULT ;
typedef int BSTR ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IUri_GetDisplayUri (int ,int *) ;
 int NS_ERROR_FAILURE ;
 int NS_OK ;
 int SysFreeString (int ) ;
 int TRUE ;
 int exec_shldocvw_67 (TYPE_4__*,int ) ;
 int hlink_frame_navigate (int *,int ,TYPE_2__*,int ,int *) ;

__attribute__((used)) static nsresult before_async_open(nsChannel *channel, NSContainer *container, BOOL *cancel)
{
    HTMLDocumentObj *doc = container->doc;
    BSTR display_uri;
    HRESULT hres;

    if(!doc->client) {
        *cancel = TRUE;
        return NS_OK;
    }

    hres = IUri_GetDisplayUri(channel->uri->uri, &display_uri);
    if(FAILED(hres))
        return NS_ERROR_FAILURE;

    if(!exec_shldocvw_67(doc, display_uri)) {
        SysFreeString(display_uri);
        *cancel = FALSE;
        return NS_OK;
    }

    hres = hlink_frame_navigate(&doc->basedoc, display_uri, channel, 0, cancel);
    SysFreeString(display_uri);
    if(FAILED(hres))
        *cancel = TRUE;
    return NS_OK;
}
