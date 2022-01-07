
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlCharEncoding ;
struct TYPE_4__ {int closecallback; int readcallback; int * context; } ;
typedef int FILE ;


 TYPE_1__* xmlAllocParserInputBuffer (int ) ;
 int xmlFileFlush ;
 int xmlFileRead ;
 scalar_t__ xmlInputCallbackInitialized ;
 int xmlRegisterDefaultInputCallbacks () ;

xmlParserInputBufferPtr
xmlParserInputBufferCreateFile(FILE *file, xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    if (xmlInputCallbackInitialized == 0)
 xmlRegisterDefaultInputCallbacks();

    if (file == ((void*)0)) return(((void*)0));

    ret = xmlAllocParserInputBuffer(enc);
    if (ret != ((void*)0)) {
        ret->context = file;
 ret->readcallback = xmlFileRead;
 ret->closecallback = xmlFileFlush;
    }

    return(ret);
}
