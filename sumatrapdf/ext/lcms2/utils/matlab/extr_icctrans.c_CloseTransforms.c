
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmsCloseProfile (int *) ;
 int cmsDeleteTransform (int *) ;
 int * hColorTransform ;
 int * hInput ;
 int * hOutput ;
 int ** hProfiles ;
 int * hProof ;
 int nProfiles ;

__attribute__((used)) static
void CloseTransforms(void)
{
 int i;

 if (hColorTransform) cmsDeleteTransform(hColorTransform);
 if (hInput) cmsCloseProfile(hInput);
 if (hOutput) cmsCloseProfile(hOutput);
 if (hProof) cmsCloseProfile(hProof);

 for (i=0; i < nProfiles; i++)
  cmsCloseProfile(hProfiles[i]);

 hColorTransform = ((void*)0); hInput = ((void*)0); hOutput = ((void*)0); hProof = ((void*)0);
}
