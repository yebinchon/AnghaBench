
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 char* ProgramName ;
 int UTILS_UNUSED_PARAMETER (int ) ;
 scalar_t__ Verbose ;
 int fprintf (int ,char*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static
void MyErrorLogHandler(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{
    if (Verbose >= 0)
        fprintf(stderr, "[%s]: %s\n", ProgramName, Text);

    UTILS_UNUSED_PARAMETER(ErrorCode);
    UTILS_UNUSED_PARAMETER(ContextID);
}
