
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static int decode(uint8_t *dest, uint8_t *src)
{
    uint8_t *p = src, *op = dest, bits = 0;
    *op = 0;

    while (*p) {
        uint8_t ch = *p++;

        if ('A' <= ch && ch <= 'Z') {
            ch = ch - 'A';
        } else if ('a' <= ch && ch <= 'z') {
            ch = ch - 'a';
        } else if ('0' <= ch && ch <= '5') {
            ch = ch - '0' + 26;
        } else {
            return - 1;
        }

        *op |= (ch << bits);
        bits += 5;

        if (bits >= 8) {
            bits -= 8;
            ++op;
            *op = (ch >> (5 - bits));
        }
    }

    return op - dest;
}
