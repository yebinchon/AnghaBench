
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hreftype; TYPE_1__* lpadesc; TYPE_3__* lptdesc; } ;
struct TYPE_7__ {int vt; TYPE_2__ u; } ;
struct TYPE_5__ {int cDims; TYPE_3__ tdescElem; } ;
typedef TYPE_3__ TYPEDESC ;


 int VT_ARRAY ;


 int VT_BYREF ;
 int VT_RESERVED ;

 int VT_TYPEMASK ;







 int VT_VECTOR ;

 int sprintf (char*,char*,...) ;
 char* strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void dump_TypeDesc(const TYPEDESC *pTD,char *szVarType) {
    if (pTD->vt & VT_RESERVED)
 szVarType += strlen(strcpy(szVarType, "reserved | "));
    if (pTD->vt & VT_BYREF)
 szVarType += strlen(strcpy(szVarType, "ref to "));
    if (pTD->vt & VT_ARRAY)
 szVarType += strlen(strcpy(szVarType, "array of "));
    if (pTD->vt & VT_VECTOR)
 szVarType += strlen(strcpy(szVarType, "vector of "));
    switch(pTD->vt & VT_TYPEMASK) {
    case 135: sprintf(szVarType, "VT_UI1"); break;
    case 144: sprintf(szVarType, "VT_I2"); break;
    case 143: sprintf(szVarType, "VT_I4"); break;
    case 138: sprintf(szVarType, "VT_R4"); break;
    case 137: sprintf(szVarType, "VT_R8"); break;
    case 153: sprintf(szVarType, "VT_BOOL"); break;
    case 147: sprintf(szVarType, "VT_ERROR"); break;
    case 150: sprintf(szVarType, "VT_CY"); break;
    case 149: sprintf(szVarType, "VT_DATE"); break;
    case 152: sprintf(szVarType, "VT_BSTR"); break;
    case 131: sprintf(szVarType, "VT_UNKNOWN"); break;
    case 148: sprintf(szVarType, "VT_DISPATCH"); break;
    case 145: sprintf(szVarType, "VT_I1"); break;
    case 134: sprintf(szVarType, "VT_UI2"); break;
    case 133: sprintf(szVarType, "VT_UI4"); break;
    case 142: sprintf(szVarType, "VT_INT"); break;
    case 132: sprintf(szVarType, "VT_UINT"); break;
    case 129: sprintf(szVarType, "VT_VARIANT"); break;
    case 128: sprintf(szVarType, "VT_VOID"); break;
    case 146: sprintf(szVarType, "VT_HRESULT"); break;
    case 130: sprintf(szVarType, "VT_USERDEFINED ref = %x",
     pTD->u.hreftype); break;
    case 141: sprintf(szVarType, "VT_LPSTR"); break;
    case 140: sprintf(szVarType, "VT_LPWSTR"); break;
    case 139: sprintf(szVarType, "ptr to ");
      dump_TypeDesc(pTD->u.lptdesc, szVarType + 7);
      break;
    case 136: sprintf(szVarType, "safearray of ");
      dump_TypeDesc(pTD->u.lptdesc, szVarType + 13);
      break;
    case 151: sprintf(szVarType, "%d dim array of ",
       pTD->u.lpadesc->cDims);
      dump_TypeDesc(&pTD->u.lpadesc->tdescElem, szVarType + strlen(szVarType));
      break;

    default: sprintf(szVarType, "unknown(%d)", pTD->vt & VT_TYPEMASK); break;
    }
}
