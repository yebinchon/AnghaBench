
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_3__ {scalar_t__ alloc; unsigned int use; unsigned int size; int * content; int * contentIO; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ XML_BUFFER_ALLOC_IO ;
 scalar_t__ xmlRealloc (int *,int) ;
 int xmlTreeErrMemory (char*) ;

int
xmlBufferGrow(xmlBufferPtr buf, unsigned int len) {
    int size;
    xmlChar *newbuf;

    if (buf == ((void*)0)) return(-1);

    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return(0);
    if (len + buf->use < buf->size) return(0);
    if (buf->size > len)
        size = buf->size * 2;
    else
        size = buf->use + len + 100;




    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != ((void*)0))) {
        size_t start_buf = buf->content - buf->contentIO;

 newbuf = (xmlChar *) xmlRealloc(buf->contentIO, start_buf + size);
 if (newbuf == ((void*)0)) {
     xmlTreeErrMemory("growing buffer");
     return(-1);
 }
 buf->contentIO = newbuf;
 buf->content = newbuf + start_buf;
    } else {
 newbuf = (xmlChar *) xmlRealloc(buf->content, size);
 if (newbuf == ((void*)0)) {
     xmlTreeErrMemory("growing buffer");
     return(-1);
 }
 buf->content = newbuf;
    }
    buf->size = size;
    return(buf->size - buf->use);
}
