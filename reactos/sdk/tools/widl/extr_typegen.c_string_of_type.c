
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,unsigned char) ;

__attribute__((used)) static const char *string_of_type(unsigned char type)
{
    switch (type)
    {
    case 197: return "FC_BYTE";
    case 192: return "FC_CHAR";
    case 151: return "FC_SMALL";
    case 132: return "FC_USMALL";
    case 129: return "FC_WCHAR";
    case 152: return "FC_SHORT";
    case 133: return "FC_USHORT";
    case 164: return "FC_LONG";
    case 136: return "FC_ULONG";
    case 172: return "FC_FLOAT";
    case 170: return "FC_HYPER";
    case 181: return "FC_DOUBLE";
    case 177: return "FC_ENUM16";
    case 176: return "FC_ENUM32";
    case 169: return "FC_IGNORE";
    case 175: return "FC_ERROR_STATUS_T";
    case 153: return "FC_RP";
    case 135: return "FC_UP";
    case 160: return "FC_OP";
    case 171: return "FC_FP";
    case 179: return "FC_ENCAPSULATED_UNION";
    case 162: return "FC_NON_ENCAPSULATED_UNION";
    case 147: return "FC_STRUCT";
    case 156: return "FC_PSTRUCT";
    case 188: return "FC_CSTRUCT";
    case 190: return "FC_CPSTRUCT";
    case 186: return "FC_CVSTRUCT";
    case 198: return "FC_BOGUS_STRUCT";
    case 150: return "FC_SMFARRAY";
    case 166: return "FC_LGFARRAY";
    case 149: return "FC_SMVARRAY";
    case 165: return "FC_LGVARRAY";
    case 193: return "FC_CARRAY";
    case 187: return "FC_CVARRAY";
    case 199: return "FC_BOGUS_ARRAY";
    case 206: return "FC_ALIGNM2";
    case 205: return "FC_ALIGNM4";
    case 204: return "FC_ALIGNM8";
    case 158: return "FC_POINTER";
    case 185: return "FC_C_CSTRING";
    case 184: return "FC_C_WSTRING";
    case 189: return "FC_CSTRING";
    case 128: return "FC_WSTRING";
    case 196: return "FC_BYTE_COUNT_POINTER";
    case 138: return "FC_TRANSMIT_AS";
    case 154: return "FC_REPRESENT_AS";
    case 167: return "FC_IP";
    case 202: return "FC_BIND_CONTEXT";
    case 201: return "FC_BIND_GENERIC";
    case 200: return "FC_BIND_PRIMITIVE";
    case 203: return "FC_AUTO_HANDLE";
    case 194: return "FC_CALLBACK_HANDLE";
    case 146: return "FC_STRUCTPAD1";
    case 145: return "FC_STRUCTPAD2";
    case 144: return "FC_STRUCTPAD3";
    case 143: return "FC_STRUCTPAD4";
    case 142: return "FC_STRUCTPAD5";
    case 141: return "FC_STRUCTPAD6";
    case 140: return "FC_STRUCTPAD7";
    case 148: return "FC_STRING_SIZED";
    case 161: return "FC_NO_REPEAT";
    case 173: return "FC_FIXED_REPEAT";
    case 130: return "FC_VARIABLE_REPEAT";
    case 174: return "FC_FIXED_OFFSET";
    case 131: return "FC_VARIABLE_OFFSET";
    case 157: return "FC_PP";
    case 180: return "FC_EMBEDDED_COMPLEX";
    case 183: return "FC_DEREFERENCE";
    case 182: return "FC_DIV_2";
    case 163: return "FC_MULT_2";
    case 207: return "FC_ADD_1";
    case 139: return "FC_SUB_1";
    case 195: return "FC_CALLBACK";
    case 191: return "FC_CONSTANT_IID";
    case 178: return "FC_END";
    case 159: return "FC_PAD";
    case 134: return "FC_USER_MARSHAL";
    case 155: return "FC_RANGE";
    case 168: return "FC_INT3264";
    case 137: return "FC_UINT3264";
    default:
        error("string_of_type: unknown type 0x%02x\n", type);
        return ((void*)0);
    }
}
