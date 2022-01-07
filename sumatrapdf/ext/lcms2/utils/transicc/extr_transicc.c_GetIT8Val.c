
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int CGATSPatch ;
 int FatalError (char*,char const*) ;
 int atof (char const*) ;
 char* cmsIT8GetData (int ,int ,int ,char const*) ;
 int hIT8in ;

__attribute__((used)) static
cmsFloat64Number GetIT8Val(cmsContext ContextID, const char* Name, cmsFloat64Number Max)
{
    const char* Val = cmsIT8GetData(ContextID, hIT8in, CGATSPatch, Name);

    if (Val == ((void*)0))
        FatalError("Field '%s' not found", Name);

    return atof(Val) / Max;

}
