
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* window; int cp_container; } ;
struct TYPE_10__ {scalar_t__ usermode; TYPE_5__ basedoc; int doc_object_service; scalar_t__ webbrowser; scalar_t__ view_sink; } ;
struct TYPE_8__ {int IHTMLWindow2_iface; } ;
struct TYPE_9__ {int load_flags; TYPE_1__ base; } ;
typedef TYPE_3__ HTMLDocumentObj ;


 int BINDING_REFRESH ;
 int DVASPECT_CONTENT ;
 scalar_t__ EDITMODE ;
 int IAdviseSink_OnViewChange (scalar_t__,int ,int) ;
 int IDocObjectService_FireNavigateComplete2 (int ,int *,int ) ;
 int TRACE (char*,TYPE_3__*) ;
 int call_explorer_69 (TYPE_3__*) ;
 int call_property_onchanged (int *,int) ;
 int init_editor (TYPE_5__*) ;

__attribute__((used)) static void parse_complete(HTMLDocumentObj *doc)
{
    TRACE("(%p)\n", doc);

    if(doc->usermode == EDITMODE)
        init_editor(&doc->basedoc);

    call_explorer_69(doc);
    if(doc->view_sink)
        IAdviseSink_OnViewChange(doc->view_sink, DVASPECT_CONTENT, -1);
    call_property_onchanged(&doc->basedoc.cp_container, 1005);
    call_explorer_69(doc);

    if(doc->webbrowser && doc->usermode != EDITMODE && !(doc->basedoc.window->load_flags & BINDING_REFRESH))
        IDocObjectService_FireNavigateComplete2(doc->doc_object_service, &doc->basedoc.window->base.IHTMLWindow2_iface, 0);


}
