
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t decode_utf16(const unsigned short **code_ptr)
{
    const unsigned short *code = *code_ptr;

    if (code[0] < 0xd800 || code[0] > 0xdc00) {
        *code_ptr += 1;
        return (uint32_t)code[0];
    } else {
        *code_ptr += 2;
        return 0x10000 + ((uint32_t)code[1] - 0xdc00) +
            (((uint32_t)code[0] - 0xd800) << 10);
    }
}
