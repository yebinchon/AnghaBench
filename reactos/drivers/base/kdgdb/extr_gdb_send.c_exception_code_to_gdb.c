
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
 void** hex_chars ;

__attribute__((used)) static
char*
exception_code_to_gdb(NTSTATUS code, char* out)
{
    unsigned char SigVal;

    switch (code)
    {
    case 131:
        SigVal = 8;
        break;
    case 129:
    case 134:
        SigVal = 5;
        break;
    case 130:
    case 135:
        SigVal = 16;
        break;
    case 132:
        SigVal = 4;
        break;
    case 128:
    case 133:
    case 136:
        SigVal = 11;
        break;
    default:
        SigVal = 7;
    }
    *out++ = hex_chars[(SigVal >> 4) & 0xf];
    *out++ = hex_chars[SigVal & 0xf];
    return out;
}
