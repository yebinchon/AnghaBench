
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* cmsUInt32Number ;
typedef char const* cmsContext ;


 int cmsUNUSED_PARAMETER (char const*) ;

__attribute__((used)) static
void DefaultLogErrorHandlerFunction(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{



     cmsUNUSED_PARAMETER(ContextID);
     cmsUNUSED_PARAMETER(ErrorCode);
     cmsUNUSED_PARAMETER(Text);
}
