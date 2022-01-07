
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsFloat64Number ;
typedef int cmsContext ;


 int CGATSPatch ;
 int CGATSoutFilename ;
 int FatalError (char*,char const*,int ) ;
 int cmsIT8SetDataDbl (int ,int ,int ,char const*,scalar_t__) ;
 scalar_t__ floor (scalar_t__) ;
 int hIT8out ;
 scalar_t__ lQuantize ;

__attribute__((used)) static
void SetCGATSfld(cmsContext ContextID, const char* Col, cmsFloat64Number Val)
{
    if (lQuantize)
        Val = floor(Val + 0.5);

    if (!cmsIT8SetDataDbl(ContextID, hIT8out, CGATSPatch, Col, Val)) {
        FatalError("couldn't set '%s' on output cgats '%s'", Col, CGATSoutFilename);
    }
}
