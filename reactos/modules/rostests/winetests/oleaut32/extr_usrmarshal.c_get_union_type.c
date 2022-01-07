
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VARTYPE ;
typedef int UINT_PTR ;
struct TYPE_4__ {int fFeatures; int cbElements; } ;
typedef int SF_TYPE ;
typedef TYPE_1__ SAFEARRAY ;
typedef int HRESULT ;


 int FADF_HAVEIID ;
 int FADF_VARIANT ;
 scalar_t__ FAILED (int ) ;
 int SF_BSTR ;
 int SF_DISPATCH ;
 int SF_ERROR ;
 int SF_HAVEIID ;
 int SF_I1 ;
 int SF_I2 ;
 int SF_I4 ;
 int SF_I8 ;
 int SF_RECORD ;
 int SF_UNKNOWN ;
 int SF_VARIANT ;
 int pSafeArrayGetVartype (TYPE_1__*,int*) ;

__attribute__((used)) static inline SF_TYPE get_union_type(SAFEARRAY *psa)
{
    VARTYPE vt;
    HRESULT hr;

    hr = pSafeArrayGetVartype(psa, &vt);
    if (FAILED(hr))
    {
        if(psa->fFeatures & FADF_VARIANT) return SF_VARIANT;

        switch(psa->cbElements)
        {
        case 1: vt = 144; break;
        case 2: vt = 143; break;
        case 4: vt = 142; break;
        case 8: vt = 141; break;
        default: return 0;
        }
    }

    if (psa->fFeatures & FADF_HAVEIID)
        return SF_HAVEIID;

    switch (vt)
    {
    case 144:
    case 135: return SF_I1;
    case 149:
    case 143:
    case 134: return SF_I2;
    case 140:
    case 131:
    case 142:
    case 133:
    case 138: return SF_I4;
    case 146:
    case 147:
    case 137:
    case 141:
    case 132: return SF_I8;
    case 139:
    case 130: return (sizeof(UINT_PTR) == 4 ? SF_I4 : SF_I8);
    case 148: return SF_BSTR;
    case 145: return SF_DISPATCH;
    case 128: return SF_VARIANT;
    case 129: return SF_UNKNOWN;



    case 136: return SF_RECORD;
    default: return SF_ERROR;
    }
}
