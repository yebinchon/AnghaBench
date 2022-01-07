
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlCatalogCleanup () ;
 int xmlCleanupCharEncodingHandlers () ;
 int xmlCleanupGlobals () ;
 int xmlCleanupInputCallbacks () ;
 int xmlCleanupMemory () ;
 int xmlCleanupOutputCallbacks () ;
 int xmlCleanupThreads () ;
 int xmlDictCleanup () ;
 scalar_t__ xmlParserInitialized ;
 int xmlRelaxNGCleanupTypes () ;
 int xmlResetLastError () ;
 int xmlSchemaCleanupTypes () ;

void
xmlCleanupParser(void) {
    if (!xmlParserInitialized)
 return;

    xmlCleanupCharEncodingHandlers();



    xmlDictCleanup();
    xmlCleanupInputCallbacks();







    xmlResetLastError();
    xmlCleanupGlobals();
    xmlCleanupThreads();
    xmlCleanupMemory();
    xmlParserInitialized = 0;
}
