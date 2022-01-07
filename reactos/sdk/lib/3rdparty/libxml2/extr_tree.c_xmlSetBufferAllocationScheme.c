
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlBufferAllocationScheme ;


 scalar_t__ XML_BUFFER_ALLOC_DOUBLEIT ;
 scalar_t__ XML_BUFFER_ALLOC_EXACT ;
 scalar_t__ XML_BUFFER_ALLOC_HYBRID ;
 scalar_t__ xmlBufferAllocScheme ;

void
xmlSetBufferAllocationScheme(xmlBufferAllocationScheme scheme) {
    if ((scheme == XML_BUFFER_ALLOC_EXACT) ||
        (scheme == XML_BUFFER_ALLOC_DOUBLEIT) ||
        (scheme == XML_BUFFER_ALLOC_HYBRID))
 xmlBufferAllocScheme = scheme;
}
