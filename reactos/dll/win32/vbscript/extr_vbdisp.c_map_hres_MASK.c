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
typedef  int HRESULT ;

/* Variables and functions */
#define  CO_E_APPDIDNTREG 177 
#define  CO_E_APPNOTFOUND 176 
#define  CO_E_CLASSSTRING 175 
#define  CO_E_SERVER_EXEC_FAILURE 174 
#define  DISP_E_ARRAYISLOCKED 173 
#define  DISP_E_BADINDEX 172 
#define  DISP_E_BADPARAMCOUNT 171 
#define  DISP_E_BADVARTYPE 170 
#define  DISP_E_MEMBERNOTFOUND 169 
#define  DISP_E_NONAMEDARGS 168 
#define  DISP_E_NOTACOLLECTION 167 
#define  DISP_E_OVERFLOW 166 
#define  DISP_E_PARAMNOTFOUND 165 
#define  DISP_E_PARAMNOTOPTIONAL 164 
#define  DISP_E_TYPEMISMATCH 163 
#define  DISP_E_UNKNOWNINTERFACE 162 
#define  DISP_E_UNKNOWNLCID 161 
#define  DISP_E_UNKNOWNNAME 160 
#define  E_ACCESSDENIED 159 
#define  E_INVALIDARG 158 
#define  E_NOINTERFACE 157 
#define  E_NOTIMPL 156 
#define  E_OUTOFMEMORY 155 
 scalar_t__ FACILITY_VBS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  MK_E_CANTOPENFILE 154 
#define  MK_E_INVALIDEXTENSION 153 
#define  MK_E_UNAVAILABLE 152 
#define  REGDB_E_CLASSNOTREG 151 
#define  RPC_E_SERVER_UNAVAILABLE 150 
#define  STG_E_ACCESSDENIED 149 
#define  STG_E_CANTSAVE 148 
#define  STG_E_DISKISWRITEPROTECTED 147 
#define  STG_E_FILEALREADYEXISTS 146 
#define  STG_E_FILENOTFOUND 145 
#define  STG_E_INSUFFICIENTMEMORY 144 
#define  STG_E_INUSE 143 
#define  STG_E_INVALIDNAME 142 
#define  STG_E_LOCKVIOLATION 141 
#define  STG_E_MEDIUMFULL 140 
#define  STG_E_NOMOREFILES 139 
#define  STG_E_NOTCURRENT 138 
#define  STG_E_PATHNOTFOUND 137 
#define  STG_E_READFAULT 136 
#define  STG_E_SHAREVIOLATION 135 
#define  STG_E_TOOMANYOPENFILES 134 
#define  STG_E_WRITEFAULT 133 
 scalar_t__ FUNC2 (int) ; 
#define  TYPE_E_CANTCREATETMPFILE 132 
#define  TYPE_E_DLLFUNCTIONNOTFOUND 131 
#define  TYPE_E_IOERROR 130 
#define  TYPE_E_OUTOFBOUNDS 129 
#define  TYPE_E_TYPEMISMATCH 128 
 int /*<<< orphan*/  VBSE_ACTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VBSE_ARRAY_LOCKED ; 
 int /*<<< orphan*/  VBSE_CANT_CREATE_OBJECT ; 
 int /*<<< orphan*/  VBSE_CANT_CREATE_TMP_FILE ; 
 int /*<<< orphan*/  VBSE_DISK_FULL ; 
 int /*<<< orphan*/  VBSE_FILE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  VBSE_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  VBSE_FUNC_ARITY_MISMATCH ; 
 int /*<<< orphan*/  VBSE_ILLEGAL_FUNC_CALL ; 
 int /*<<< orphan*/  VBSE_INVALID_DLL_FUNCTION_NAME ; 
 int /*<<< orphan*/  VBSE_INVALID_TYPELIB_VARIABLE ; 
 int /*<<< orphan*/  VBSE_IO_ERROR ; 
 int /*<<< orphan*/  VBSE_LOCALE_SETTING_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VBSE_NAMED_ARGS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VBSE_NAMED_PARAM_NOT_FOUND ; 
 int /*<<< orphan*/  VBSE_NOT_ENUM ; 
 int /*<<< orphan*/  VBSE_OLE_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  VBSE_OLE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VBSE_OLE_NO_PROP_OR_METHOD ; 
 int /*<<< orphan*/  VBSE_OUT_OF_BOUNDS ; 
 int /*<<< orphan*/  VBSE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VBSE_OVERFLOW ; 
 int /*<<< orphan*/  VBSE_PARAMETER_NOT_OPTIONAL ; 
 int /*<<< orphan*/  VBSE_PATH_FILE_ACCESS ; 
 int /*<<< orphan*/  VBSE_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  VBSE_PERMISSION_DENIED ; 
 int /*<<< orphan*/  VBSE_SERVER_NOT_FOUND ; 
 int /*<<< orphan*/  VBSE_TOO_MANY_FILES ; 
 int /*<<< orphan*/  VBSE_TYPE_MISMATCH ; 

HRESULT FUNC3(HRESULT hres)
{
    if(FUNC2(hres) || FUNC0(hres) == FACILITY_VBS)
        return hres;

    switch(hres) {
    case E_NOTIMPL:                  return FUNC1(VBSE_ACTION_NOT_SUPPORTED);
    case E_NOINTERFACE:              return FUNC1(VBSE_OLE_NOT_SUPPORTED);
    case DISP_E_UNKNOWNINTERFACE:    return FUNC1(VBSE_OLE_NO_PROP_OR_METHOD);
    case DISP_E_MEMBERNOTFOUND:      return FUNC1(VBSE_OLE_NO_PROP_OR_METHOD);
    case DISP_E_PARAMNOTFOUND:       return FUNC1(VBSE_NAMED_PARAM_NOT_FOUND);
    case DISP_E_TYPEMISMATCH:        return FUNC1(VBSE_TYPE_MISMATCH);
    case DISP_E_UNKNOWNNAME:         return FUNC1(VBSE_OLE_NO_PROP_OR_METHOD);
    case DISP_E_NONAMEDARGS:         return FUNC1(VBSE_NAMED_ARGS_NOT_SUPPORTED);
    case DISP_E_BADVARTYPE:          return FUNC1(VBSE_INVALID_TYPELIB_VARIABLE);
    case DISP_E_OVERFLOW:            return FUNC1(VBSE_OVERFLOW);
    case DISP_E_BADINDEX:            return FUNC1(VBSE_OUT_OF_BOUNDS);
    case DISP_E_UNKNOWNLCID:         return FUNC1(VBSE_LOCALE_SETTING_NOT_SUPPORTED);
    case DISP_E_ARRAYISLOCKED:       return FUNC1(VBSE_ARRAY_LOCKED);
    case DISP_E_BADPARAMCOUNT:       return FUNC1(VBSE_FUNC_ARITY_MISMATCH);
    case DISP_E_PARAMNOTOPTIONAL:    return FUNC1(VBSE_PARAMETER_NOT_OPTIONAL);
    case DISP_E_NOTACOLLECTION:      return FUNC1(VBSE_NOT_ENUM);
    case TYPE_E_DLLFUNCTIONNOTFOUND: return FUNC1(VBSE_INVALID_DLL_FUNCTION_NAME);
    case TYPE_E_TYPEMISMATCH:        return FUNC1(VBSE_TYPE_MISMATCH);
    case TYPE_E_OUTOFBOUNDS:         return FUNC1(VBSE_OUT_OF_BOUNDS);
    case TYPE_E_IOERROR:             return FUNC1(VBSE_IO_ERROR);
    case TYPE_E_CANTCREATETMPFILE:   return FUNC1(VBSE_CANT_CREATE_TMP_FILE);
    case STG_E_FILENOTFOUND:         return FUNC1(VBSE_OLE_FILE_NOT_FOUND);
    case STG_E_PATHNOTFOUND:         return FUNC1(VBSE_PATH_NOT_FOUND);
    case STG_E_TOOMANYOPENFILES:     return FUNC1(VBSE_TOO_MANY_FILES);
    case STG_E_ACCESSDENIED:         return FUNC1(VBSE_PERMISSION_DENIED);
    case STG_E_INSUFFICIENTMEMORY:   return FUNC1(VBSE_OUT_OF_MEMORY);
    case STG_E_NOMOREFILES:          return FUNC1(VBSE_TOO_MANY_FILES);
    case STG_E_DISKISWRITEPROTECTED: return FUNC1(VBSE_PERMISSION_DENIED);
    case STG_E_WRITEFAULT:           return FUNC1(VBSE_IO_ERROR);
    case STG_E_READFAULT:            return FUNC1(VBSE_IO_ERROR);
    case STG_E_SHAREVIOLATION:       return FUNC1(VBSE_PATH_FILE_ACCESS);
    case STG_E_LOCKVIOLATION:        return FUNC1(VBSE_PERMISSION_DENIED);
    case STG_E_FILEALREADYEXISTS:    return FUNC1(VBSE_FILE_ALREADY_EXISTS);
    case STG_E_MEDIUMFULL:           return FUNC1(VBSE_DISK_FULL);
    case STG_E_INVALIDNAME:          return FUNC1(VBSE_FILE_NOT_FOUND);
    case STG_E_INUSE:                return FUNC1(VBSE_PERMISSION_DENIED);
    case STG_E_NOTCURRENT:           return FUNC1(VBSE_PERMISSION_DENIED);
    case STG_E_CANTSAVE:             return FUNC1(VBSE_IO_ERROR);
    case REGDB_E_CLASSNOTREG:        return FUNC1(VBSE_CANT_CREATE_OBJECT);
    case MK_E_UNAVAILABLE:           return FUNC1(VBSE_CANT_CREATE_OBJECT);
    case MK_E_INVALIDEXTENSION:      return FUNC1(VBSE_OLE_FILE_NOT_FOUND);
    case MK_E_CANTOPENFILE:          return FUNC1(VBSE_OLE_FILE_NOT_FOUND);
    case CO_E_CLASSSTRING:           return FUNC1(VBSE_CANT_CREATE_OBJECT);
    case CO_E_APPNOTFOUND:           return FUNC1(VBSE_CANT_CREATE_OBJECT);
    case CO_E_APPDIDNTREG:           return FUNC1(VBSE_CANT_CREATE_OBJECT);
    case E_ACCESSDENIED:             return FUNC1(VBSE_PERMISSION_DENIED);
    case E_OUTOFMEMORY:              return FUNC1(VBSE_OUT_OF_MEMORY);
    case E_INVALIDARG:               return FUNC1(VBSE_ILLEGAL_FUNC_CALL);
    case RPC_E_SERVER_UNAVAILABLE:   return FUNC1(VBSE_SERVER_NOT_FOUND);
    case CO_E_SERVER_EXEC_FAILURE:   return FUNC1(VBSE_CANT_CREATE_OBJECT);
    }

    return hres;
}