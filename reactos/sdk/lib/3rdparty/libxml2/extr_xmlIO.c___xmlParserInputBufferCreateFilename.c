
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int avail_in; scalar_t__ next_in; } ;
typedef TYPE_1__ z_stream ;
typedef TYPE_2__* xmlParserInputBufferPtr ;
typedef int xmlCharEncoding ;
struct TYPE_8__ {scalar_t__ (* matchcallback ) (char const*) ;int (* closecallback ) (void*) ;void* (* opencallback ) (char const*) ;int readcallback; } ;
struct TYPE_7__ {int compressed; int (* closecallback ) (void*) ;int readcallback; void* context; } ;


 int __libxml2_xzcompressed (void*) ;
 int gzdirect (void*) ;
 int gzread (void*,char*,int) ;
 int gzrewind (void*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ stub1 (char const*) ;
 void* stub2 (char const*) ;
 int stub3 (void*) ;
 TYPE_2__* xmlAllocParserInputBuffer (int ) ;
 void* xmlGzfileOpen (char const*) ;
 scalar_t__ xmlInputCallbackInitialized ;
 int xmlInputCallbackNr ;
 TYPE_3__* xmlInputCallbackTable ;
 int xmlRegisterDefaultInputCallbacks () ;
 void* xmlXzfileOpen (char const*) ;

xmlParserInputBufferPtr
__xmlParserInputBufferCreateFilename(const char *URI, xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;
    int i = 0;
    void *context = ((void*)0);

    if (xmlInputCallbackInitialized == 0)
 xmlRegisterDefaultInputCallbacks();

    if (URI == ((void*)0)) return(((void*)0));





    if (context == ((void*)0)) {
 for (i = xmlInputCallbackNr - 1;i >= 0;i--) {
     if ((xmlInputCallbackTable[i].matchcallback != ((void*)0)) &&
  (xmlInputCallbackTable[i].matchcallback(URI) != 0)) {
  context = xmlInputCallbackTable[i].opencallback(URI);
  if (context != ((void*)0)) {
      break;
  }
     }
 }
    }
    if (context == ((void*)0)) {
 return(((void*)0));
    }




    ret = xmlAllocParserInputBuffer(enc);
    if (ret != ((void*)0)) {
 ret->context = context;
 ret->readcallback = xmlInputCallbackTable[i].readcallback;
 ret->closecallback = xmlInputCallbackTable[i].closecallback;
    }
    else
      xmlInputCallbackTable[i].closecallback (context);

    return(ret);
}
