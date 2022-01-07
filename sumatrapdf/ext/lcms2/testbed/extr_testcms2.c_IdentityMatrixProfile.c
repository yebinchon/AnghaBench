
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
struct TYPE_4__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ cmsVEC3 ;
typedef int cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;


 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int _cmsMAT3identity (int ,int *) ;
 int cmsAT_END ;
 int cmsCreateProfilePlaceholder (int ) ;
 int * cmsD50_XYZ (int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsSetColorSpace (int ,int ,int ) ;
 int cmsSetDeviceClass (int ,int ,int ) ;
 int cmsSetHeaderRenderingIntent (int ,int ,int ) ;
 int cmsSetPCS (int ,int ,int ) ;
 int cmsSetProfileVersion (int ,int ,double) ;
 int cmsSigBToD1Tag ;
 int cmsSigColorSpaceClass ;
 int cmsSigDToB1Tag ;
 int cmsSigMediaWhitePointTag ;
 int cmsSigXYZData ;
 int cmsStageAllocMatrix (int ,int,int,int *,int *) ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsHPROFILE IdentityMatrixProfile( cmsColorSpaceSignature dataSpace)
{
    cmsContext ctx = 0;
    cmsVEC3 zero = {{0,0,0}};
    cmsMAT3 identity;
    cmsPipeline* forward;
    cmsPipeline* reverse;
    cmsHPROFILE identityProfile = cmsCreateProfilePlaceholder( ctx);


    cmsSetProfileVersion(DbgThread(), identityProfile, 4.3);

    cmsSetDeviceClass(DbgThread(), identityProfile, cmsSigColorSpaceClass);
    cmsSetColorSpace(DbgThread(), identityProfile, dataSpace);
    cmsSetPCS(DbgThread(), identityProfile, cmsSigXYZData);

    cmsSetHeaderRenderingIntent(DbgThread(), identityProfile, INTENT_RELATIVE_COLORIMETRIC);

    cmsWriteTag(DbgThread(), identityProfile, cmsSigMediaWhitePointTag, cmsD50_XYZ(DbgThread()));



    _cmsMAT3identity(DbgThread(), &identity);


    forward = cmsPipelineAlloc( 0, 3, 3);
    cmsPipelineInsertStage(DbgThread(), forward, cmsAT_END, cmsStageAllocMatrix( ctx, 3, 3, (cmsFloat64Number*)&identity, (cmsFloat64Number*)&zero));
    cmsWriteTag(DbgThread(), identityProfile, cmsSigDToB1Tag, forward);

    cmsPipelineFree(DbgThread(), forward);

    reverse = cmsPipelineAlloc( 0, 3, 3);
    cmsPipelineInsertStage(DbgThread(), reverse, cmsAT_END, cmsStageAllocMatrix( ctx, 3, 3, (cmsFloat64Number*)&identity, (cmsFloat64Number*)&zero));
    cmsWriteTag(DbgThread(), identityProfile, cmsSigBToD1Tag, reverse);

    cmsPipelineFree(DbgThread(), reverse);

    return identityProfile;
}
