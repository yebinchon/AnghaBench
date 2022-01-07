
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_3__ {int alloc; unsigned int size; size_t use; scalar_t__* content; scalar_t__* contentIO; } ;


 size_t BASE_BUFFER_SIZE ;
 int UINT_MAX ;



 int XML_BUFFER_ALLOC_IMMUTABLE ;

 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memmove (scalar_t__*,scalar_t__*,size_t) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlMallocAtomic (unsigned int) ;
 scalar_t__ xmlRealloc (scalar_t__*,unsigned int) ;
 int xmlTreeErrMemory (char*) ;

int
xmlBufferResize(xmlBufferPtr buf, unsigned int size)
{
    unsigned int newSize;
    xmlChar* rebuf = ((void*)0);
    size_t start_buf;

    if (buf == ((void*)0))
        return(0);

    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return(0);


    if (size < buf->size)
        return 1;


    switch (buf->alloc){
 case 128:
 case 131:

     newSize = (buf->size ? buf->size*2 : size + 10);
     while (size > newSize) {
         if (newSize > UINT_MAX / 2) {
             xmlTreeErrMemory("growing buffer");
             return 0;
         }
         newSize *= 2;
     }
     break;
 case 130:
     newSize = size+10;
     break;
        case 129:
            if (buf->use < BASE_BUFFER_SIZE)
                newSize = size;
            else {
                newSize = buf->size * 2;
                while (size > newSize) {
                    if (newSize > UINT_MAX / 2) {
                        xmlTreeErrMemory("growing buffer");
                        return 0;
                    }
                    newSize *= 2;
                }
            }
            break;

 default:
     newSize = size+10;
     break;
    }

    if ((buf->alloc == 128) && (buf->contentIO != ((void*)0))) {
        start_buf = buf->content - buf->contentIO;

        if (start_buf > newSize) {

     memmove(buf->contentIO, buf->content, buf->use);
     buf->content = buf->contentIO;
     buf->content[buf->use] = 0;
     buf->size += start_buf;
 } else {
     rebuf = (xmlChar *) xmlRealloc(buf->contentIO, start_buf + newSize);
     if (rebuf == ((void*)0)) {
  xmlTreeErrMemory("growing buffer");
  return 0;
     }
     buf->contentIO = rebuf;
     buf->content = rebuf + start_buf;
 }
    } else {
 if (buf->content == ((void*)0)) {
     rebuf = (xmlChar *) xmlMallocAtomic(newSize);
 } else if (buf->size - buf->use < 100) {
     rebuf = (xmlChar *) xmlRealloc(buf->content, newSize);
        } else {





     rebuf = (xmlChar *) xmlMallocAtomic(newSize);
     if (rebuf != ((void*)0)) {
  memcpy(rebuf, buf->content, buf->use);
  xmlFree(buf->content);
  rebuf[buf->use] = 0;
     }
 }
 if (rebuf == ((void*)0)) {
     xmlTreeErrMemory("growing buffer");
     return 0;
 }
 buf->content = rebuf;
    }
    buf->size = newSize;

    return 1;
}
