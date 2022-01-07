
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int FatalErrorQuit ;
 int cmsSetLogErrorHandler (int ,int ) ;

void ResetFatalError(cmsContext ContextID)
{
    cmsSetLogErrorHandler(ContextID, FatalErrorQuit);
}
