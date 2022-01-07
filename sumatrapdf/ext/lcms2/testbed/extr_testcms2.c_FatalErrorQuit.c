
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 int Die (char const*) ;
 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
void FatalErrorQuit(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{
    Die(Text);

    cmsUNUSED_PARAMETER(ContextID);
    cmsUNUSED_PARAMETER(ErrorCode);
}
