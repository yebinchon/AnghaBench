
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int CheckBadTransforms () ;
 int DbgThread () ;
 int ErrorReportingFunction ;
 int FALSE ;
 int FatalErrorQuit ;
 int TrappedError ;
 int cmsSetLogErrorHandler (int ,int ) ;

__attribute__((used)) static
cmsInt32Number CheckErrReportingOnBadTransforms(void)
{
    cmsInt32Number rc;

    cmsSetLogErrorHandler(DbgThread(), ErrorReportingFunction);
    rc = CheckBadTransforms();
    cmsSetLogErrorHandler(DbgThread(), FatalErrorQuit);


    TrappedError = FALSE;
    return rc;
}
