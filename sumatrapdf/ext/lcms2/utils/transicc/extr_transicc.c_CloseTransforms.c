
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 scalar_t__ InputColorant ;
 scalar_t__ OutputColorant ;
 int cmsDeleteTransform (int ,scalar_t__) ;
 int cmsFreeNamedColorList (int ,scalar_t__) ;
 scalar_t__ hTrans ;
 scalar_t__ hTransLab ;
 scalar_t__ hTransXYZ ;

__attribute__((used)) static
void CloseTransforms(cmsContext ContextID)
{
    if (InputColorant) cmsFreeNamedColorList(ContextID, InputColorant);
    if (OutputColorant) cmsFreeNamedColorList(ContextID, OutputColorant);

    if (hTrans) cmsDeleteTransform(ContextID, hTrans);
    if (hTransLab) cmsDeleteTransform(ContextID, hTransLab);
    if (hTransXYZ) cmsDeleteTransform(ContextID, hTransXYZ);

}
