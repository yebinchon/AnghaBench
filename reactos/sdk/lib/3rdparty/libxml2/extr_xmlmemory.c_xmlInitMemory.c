
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int sscanf (char*,char*,int *) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlMemInitialized ;
 int xmlMemMutex ;
 int xmlMemStopAtBlock ;
 int xmlMemTraceBlockAt ;
 int xmlNewMutex () ;

int
xmlInitMemory(void)
{
     if (xmlMemInitialized) return(-1);
     xmlMemInitialized = 1;
     xmlMemMutex = xmlNewMutex();
     return(0);
}
