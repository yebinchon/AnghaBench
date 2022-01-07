
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlBufferPtr ;
typedef scalar_t__ xmlBufferAllocationScheme ;
struct TYPE_3__ {scalar_t__ alloc; } ;


 scalar_t__ XML_BUFFER_ALLOC_DOUBLEIT ;
 scalar_t__ XML_BUFFER_ALLOC_EXACT ;
 scalar_t__ XML_BUFFER_ALLOC_HYBRID ;
 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ XML_BUFFER_ALLOC_IO ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlBufferSetAllocationScheme(xmlBufferPtr buf,
                             xmlBufferAllocationScheme scheme) {
    if (buf == ((void*)0)) {




        return;
    }
    if ((buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) ||
        (buf->alloc == XML_BUFFER_ALLOC_IO)) return;
    if ((scheme == XML_BUFFER_ALLOC_DOUBLEIT) ||
        (scheme == XML_BUFFER_ALLOC_EXACT) ||
        (scheme == XML_BUFFER_ALLOC_HYBRID) ||
        (scheme == XML_BUFFER_ALLOC_IMMUTABLE))
 buf->alloc = scheme;
}
