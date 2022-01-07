
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {TYPE_1__* nsevent_listener; } ;
struct TYPE_5__ {int htmlevent_listener; } ;
typedef TYPE_2__ HTMLDocumentNode ;


 int TRUE ;
 int detach_nslistener (TYPE_2__*,int const*,int *,int ) ;

void detach_nsevent(HTMLDocumentNode *doc, const WCHAR *type)
{
    detach_nslistener(doc, type, &doc->nsevent_listener->htmlevent_listener, TRUE);
}
