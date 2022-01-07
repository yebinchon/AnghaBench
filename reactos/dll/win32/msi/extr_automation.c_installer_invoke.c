
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VARIANT ;
typedef int UINT ;
typedef int REFIID ;
typedef int LCID ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;
typedef int DISPID ;
typedef int AutomationObject ;
 int DISP_E_MEMBERNOTFOUND ;
 int InstallerImpl_CreateRecord (int ,int *,int *,int *,int *) ;
 int InstallerImpl_EnableLog (int ,int *,int *,int *,int *) ;
 int InstallerImpl_Environment (int ,int *,int *,int *,int *) ;
 int InstallerImpl_FileAttributes (int ,int *,int *,int *,int *) ;
 int InstallerImpl_FileSize (int ,int *,int *,int *,int *) ;
 int InstallerImpl_FileVersion (int ,int *,int *,int *,int *) ;
 int InstallerImpl_InstallProduct (int ,int *,int *,int *,int *) ;
 int InstallerImpl_LastErrorRecord (int ,int *,int *,int *,int *) ;
 int InstallerImpl_OpenDatabase (int ,int *,int *,int *,int *) ;
 int InstallerImpl_OpenPackage (int *,int ,int *,int *,int *,int *) ;
 int InstallerImpl_OpenProduct (int ,int *,int *,int *,int *) ;
 int InstallerImpl_ProductInfo (int ,int *,int *,int *,int *) ;
 int InstallerImpl_ProductState (int ,int *,int *,int *,int *) ;
 int InstallerImpl_Products (int ,int *,int *,int *,int *) ;
 int InstallerImpl_RegistryValue (int ,int *,int *,int *,int *) ;
 int InstallerImpl_RelatedProducts (int ,int *,int *,int *,int *) ;
 int InstallerImpl_SummaryInformation (int ,int *,int *,int *,int *) ;
 int InstallerImpl_UILevel (int ,int *,int *,int *,int *) ;
 int InstallerImpl_Version (int ,int *,int *,int *) ;

__attribute__((used)) static HRESULT installer_invoke(
        AutomationObject* This,
        DISPID dispIdMember,
        REFIID riid,
        LCID lcid,
        WORD wFlags,
        DISPPARAMS* pDispParams,
        VARIANT* pVarResult,
        EXCEPINFO* pExcepInfo,
        UINT* puArgErr)
{
    switch (dispIdMember)
    {
        case 146:
            return InstallerImpl_CreateRecord(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case 137:
            return InstallerImpl_OpenPackage(This, wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case 136:
            return InstallerImpl_OpenProduct(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case 138:
            return InstallerImpl_OpenDatabase(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case 130:
            return InstallerImpl_SummaryInformation(wFlags, pDispParams,
                                                    pVarResult, pExcepInfo,
                                                    puArgErr);

        case 129:
            return InstallerImpl_UILevel(wFlags, pDispParams,
                                         pVarResult, pExcepInfo, puArgErr);

        case 145:
            return InstallerImpl_EnableLog(wFlags, pDispParams,
                                           pVarResult, pExcepInfo, puArgErr);

        case 140:
            return InstallerImpl_InstallProduct(wFlags, pDispParams,
                                                pVarResult, pExcepInfo,
                                                puArgErr);

        case 128:
            return InstallerImpl_Version(wFlags, pVarResult,
                                         pExcepInfo, puArgErr);

        case 139:
            return InstallerImpl_LastErrorRecord(wFlags, pDispParams,
                                                 pVarResult, pExcepInfo,
                                                 puArgErr);

        case 132:
            return InstallerImpl_RegistryValue(wFlags, pDispParams,
                                               pVarResult, pExcepInfo,
                                               puArgErr);

        case 144:
            return InstallerImpl_Environment(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case 143:
            return InstallerImpl_FileAttributes(wFlags, pDispParams,
                                                pVarResult, pExcepInfo,
                                                puArgErr);

        case 142:
            return InstallerImpl_FileSize(wFlags, pDispParams,
                                          pVarResult, pExcepInfo, puArgErr);

        case 141:
            return InstallerImpl_FileVersion(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case 133:
            return InstallerImpl_ProductState(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case 135:
            return InstallerImpl_ProductInfo(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case 134:
            return InstallerImpl_Products(wFlags, pDispParams,
                                          pVarResult, pExcepInfo, puArgErr);

        case 131:
            return InstallerImpl_RelatedProducts(wFlags, pDispParams,
                                                 pVarResult, pExcepInfo,
                                                 puArgErr);

        default:
            return DISP_E_MEMBERNOTFOUND;
    }
}
