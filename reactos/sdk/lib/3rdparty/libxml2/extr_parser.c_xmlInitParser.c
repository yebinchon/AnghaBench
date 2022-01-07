
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xmlGlobalInitMutexLock () ;
 int __xmlGlobalInitMutexUnlock () ;
 int htmlDefaultSAXHandlerInit () ;
 int htmlInitAutoClose () ;
 int initGenericErrorDefaultFunc (int *) ;
 int xmlDefaultSAXHandlerInit () ;
 int * xmlGenericError ;
 int * xmlGenericErrorDefaultFunc ;
 int xmlInitCharEncodingHandlers () ;
 int xmlInitGlobals () ;
 int xmlInitMemory () ;
 int xmlInitThreads () ;
 int xmlInitializeDict () ;
 int xmlParserInitialized ;
 int xmlRegisterDefaultInputCallbacks () ;
 int xmlRegisterDefaultOutputCallbacks () ;
 int xmlXPathInit () ;

void
xmlInitParser(void) {
    if (xmlParserInitialized != 0)
 return;





 xmlInitThreads();
 xmlInitGlobals();
 if ((xmlGenericError == xmlGenericErrorDefaultFunc) ||
     (xmlGenericError == ((void*)0)))
     initGenericErrorDefaultFunc(((void*)0));
 xmlInitMemory();
        xmlInitializeDict();
 xmlInitCharEncodingHandlers();
 xmlDefaultSAXHandlerInit();
 xmlRegisterDefaultInputCallbacks();
 xmlParserInitialized = 1;




}
