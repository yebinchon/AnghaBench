
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 int mexErrMsgTxt (char const*) ;

__attribute__((used)) static
void MatLabErrorHandler(cmsContext ContextID, cmsUInt32Number ErrorCode,
      const char *Text)
{
 mexErrMsgTxt(Text);
}
