
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 int ReasonToFailBuffer ;
 int SimultaneousErrors ;
 scalar_t__ TEXT_ERROR_BUFFER_SIZE ;
 int TRUE ;
 int TrappedError ;
 int cmsUNUSED_PARAMETER (int ) ;
 int strncpy (int ,char const*,scalar_t__) ;

__attribute__((used)) static
void ErrorReportingFunction(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{
    TrappedError = TRUE;
    SimultaneousErrors++;
    strncpy(ReasonToFailBuffer, Text, TEXT_ERROR_BUFFER_SIZE-1);

    cmsUNUSED_PARAMETER(ContextID);
    cmsUNUSED_PARAMETER(ErrorCode);
}
