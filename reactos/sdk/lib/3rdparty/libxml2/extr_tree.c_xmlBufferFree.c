
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; struct TYPE_4__* content; struct TYPE_4__* contentIO; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ XML_BUFFER_ALLOC_IO ;
 int xmlFree (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlBufferFree(xmlBufferPtr buf) {
    if (buf == ((void*)0)) {




 return;
    }

    if ((buf->alloc == XML_BUFFER_ALLOC_IO) &&
        (buf->contentIO != ((void*)0))) {
        xmlFree(buf->contentIO);
    } else if ((buf->content != ((void*)0)) &&
        (buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)) {
        xmlFree(buf->content);
    }
    xmlFree(buf);
}
