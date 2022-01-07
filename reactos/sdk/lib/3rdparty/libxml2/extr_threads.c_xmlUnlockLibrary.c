
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlLibraryLock ;
 int xmlRMutexUnlock (int ) ;

void
xmlUnlockLibrary(void)
{



    xmlRMutexUnlock(xmlLibraryLock);
}
