
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsVEC3 ;
typedef int cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int cmsBool ;


 int FALSE ;
 int IsEmptyLayer (int ,int *,int *) ;
 int TRUE ;
 int _cmsStageAllocLab2XYZ (int ) ;
 int _cmsStageAllocXYZ2Lab (int ) ;
 int cmsAT_END ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;


 int cmsStageAllocMatrix (int ,int,int,int *,int *) ;

__attribute__((used)) static
cmsBool AddConversion(cmsContext ContextID, cmsPipeline* Result, cmsColorSpaceSignature InPCS, cmsColorSpaceSignature OutPCS, cmsMAT3* m, cmsVEC3* off)
{
    cmsFloat64Number* m_as_dbl = (cmsFloat64Number*) m;
    cmsFloat64Number* off_as_dbl = (cmsFloat64Number*) off;


    switch (InPCS) {

    case 128:

        switch (OutPCS) {

        case 128:
            if (!IsEmptyLayer(ContextID, m, off) &&
                !cmsPipelineInsertStage(ContextID, Result, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            break;

        case 129:
            if (!IsEmptyLayer(ContextID, m, off) &&
                !cmsPipelineInsertStage(ContextID, Result, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_END, _cmsStageAllocXYZ2Lab(ContextID)))
                return FALSE;
            break;

        default:
            return FALSE;
        }
        break;

    case 129:

        switch (OutPCS) {

        case 128:

            if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_END, _cmsStageAllocLab2XYZ(ContextID)))
                return FALSE;
            if (!IsEmptyLayer(ContextID, m, off) &&
                !cmsPipelineInsertStage(ContextID, Result, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, m_as_dbl, off_as_dbl)))
                return FALSE;
            break;

        case 129:

            if (!IsEmptyLayer(ContextID, m, off)) {
                if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_END, _cmsStageAllocLab2XYZ(ContextID)) ||
                    !cmsPipelineInsertStage(ContextID, Result, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, m_as_dbl, off_as_dbl)) ||
                    !cmsPipelineInsertStage(ContextID, Result, cmsAT_END, _cmsStageAllocXYZ2Lab(ContextID)))
                    return FALSE;
            }
            break;

        default:
            return FALSE;
        }
        break;


    default:
        if (InPCS != OutPCS) return FALSE;
        break;
    }

    return TRUE;
}
