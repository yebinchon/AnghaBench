#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  int DISPID ;
typedef  int /*<<< orphan*/  AutomationObject ;

/* Variables and functions */
#define  DISPID_INSTALLER_CREATERECORD 146 
#define  DISPID_INSTALLER_ENABLELOG 145 
#define  DISPID_INSTALLER_ENVIRONMENT 144 
#define  DISPID_INSTALLER_FILEATTRIBUTES 143 
#define  DISPID_INSTALLER_FILESIZE 142 
#define  DISPID_INSTALLER_FILEVERSION 141 
#define  DISPID_INSTALLER_INSTALLPRODUCT 140 
#define  DISPID_INSTALLER_LASTERRORRECORD 139 
#define  DISPID_INSTALLER_OPENDATABASE 138 
#define  DISPID_INSTALLER_OPENPACKAGE 137 
#define  DISPID_INSTALLER_OPENPRODUCT 136 
#define  DISPID_INSTALLER_PRODUCTINFO 135 
#define  DISPID_INSTALLER_PRODUCTS 134 
#define  DISPID_INSTALLER_PRODUCTSTATE 133 
#define  DISPID_INSTALLER_REGISTRYVALUE 132 
#define  DISPID_INSTALLER_RELATEDPRODUCTS 131 
#define  DISPID_INSTALLER_SUMMARYINFORMATION 130 
#define  DISPID_INSTALLER_UILEVEL 129 
#define  DISPID_INSTALLER_VERSION 128 
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC19(
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
        case DISPID_INSTALLER_CREATERECORD:
            return FUNC0(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_OPENPACKAGE:
            return FUNC9(This, wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_OPENPRODUCT:
            return FUNC10(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_OPENDATABASE:
            return FUNC8(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_SUMMARYINFORMATION:
            return FUNC16(wFlags, pDispParams,
                                                    pVarResult, pExcepInfo,
                                                    puArgErr);

        case DISPID_INSTALLER_UILEVEL:
            return FUNC17(wFlags, pDispParams,
                                         pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_ENABLELOG:
            return FUNC1(wFlags, pDispParams,
                                           pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_INSTALLPRODUCT:
            return FUNC6(wFlags, pDispParams,
                                                pVarResult, pExcepInfo,
                                                puArgErr);

        case DISPID_INSTALLER_VERSION:
            return FUNC18(wFlags, pVarResult,
                                         pExcepInfo, puArgErr);

        case DISPID_INSTALLER_LASTERRORRECORD:
            return FUNC7(wFlags, pDispParams,
                                                 pVarResult, pExcepInfo,
                                                 puArgErr);

        case DISPID_INSTALLER_REGISTRYVALUE:
            return FUNC14(wFlags, pDispParams,
                                               pVarResult, pExcepInfo,
                                               puArgErr);

        case DISPID_INSTALLER_ENVIRONMENT:
            return FUNC2(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_FILEATTRIBUTES:
            return FUNC3(wFlags, pDispParams,
                                                pVarResult, pExcepInfo,
                                                puArgErr);

        case DISPID_INSTALLER_FILESIZE:
            return FUNC4(wFlags, pDispParams,
                                          pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_FILEVERSION:
            return FUNC5(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_PRODUCTSTATE:
            return FUNC12(wFlags, pDispParams,
                                              pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_PRODUCTINFO:
            return FUNC11(wFlags, pDispParams,
                                             pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_PRODUCTS:
            return FUNC13(wFlags, pDispParams,
                                          pVarResult, pExcepInfo, puArgErr);

        case DISPID_INSTALLER_RELATEDPRODUCTS:
            return FUNC15(wFlags, pDispParams,
                                                 pVarResult, pExcepInfo,
                                                 puArgErr);

        default:
            return DISP_E_MEMBERNOTFOUND;
    }
}