
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xmlBufferAllocationScheme ;
typedef TYPE_2__* xmlBufPtr ;
struct TYPE_5__ {scalar_t__ error; scalar_t__ alloc; int content; int contentIO; TYPE_1__* buffer; } ;
struct TYPE_4__ {scalar_t__ alloc; } ;


 scalar_t__ XML_BUFFER_ALLOC_BOUNDED ;
 scalar_t__ XML_BUFFER_ALLOC_DOUBLEIT ;
 scalar_t__ XML_BUFFER_ALLOC_EXACT ;
 scalar_t__ XML_BUFFER_ALLOC_HYBRID ;
 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ XML_BUFFER_ALLOC_IO ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xmlBufSetAllocationScheme(xmlBufPtr buf,
                          xmlBufferAllocationScheme scheme) {
    if ((buf == ((void*)0)) || (buf->error != 0)) {




        return(-1);
    }
    if ((buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) ||
        (buf->alloc == XML_BUFFER_ALLOC_IO))
        return(-1);
    if ((scheme == XML_BUFFER_ALLOC_DOUBLEIT) ||
        (scheme == XML_BUFFER_ALLOC_EXACT) ||
        (scheme == XML_BUFFER_ALLOC_HYBRID) ||
        (scheme == XML_BUFFER_ALLOC_IMMUTABLE) ||
 (scheme == XML_BUFFER_ALLOC_BOUNDED)) {
 buf->alloc = scheme;
        if (buf->buffer)
            buf->buffer->alloc = scheme;
        return(0);
    }




    if (scheme == XML_BUFFER_ALLOC_IO) {
        buf->alloc = XML_BUFFER_ALLOC_IO;
        buf->contentIO = buf->content;
    }
    return(-1);
}
