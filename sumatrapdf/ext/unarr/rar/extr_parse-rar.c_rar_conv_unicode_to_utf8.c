
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int Check (int) ;
 int ar_conv_rune_to_utf8 (char const,char*,int) ;
 char* calloc (int,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *rar_conv_unicode_to_utf8(const char *data, uint16_t len)
{


    uint8_t highbyte, flagbyte, flagbits, size, length, i;
    const uint8_t *in = (uint8_t *)data + strlen(data) + 1;
    const uint8_t *end_in = (uint8_t *)data + len;
    char *str = calloc(len + 1, 3);
    char *out = str;
    char *end_out = str + len * 3;

    if (!str)
        return ((void*)0);
    if (end_in - in <= 1) {
        memcpy(str, data, len);
        return str;
    }

    highbyte = *in++;
    flagbyte = 0;
    flagbits = 0;
    size = 0;

    while (in < end_in && out < end_out) {
        if (flagbits == 0) {
            flagbyte = *in++;
            flagbits = 8;
        }
        flagbits -= 2;
        switch ((flagbyte >> flagbits) & 3) {
        case 0:
            if (!(in + 1 <= end_in)) { free(str); return ((void*)0); } else ((void)0);
            out += ar_conv_rune_to_utf8(*in++, out, end_out - out);
            size++;
            break;
        case 1:
            if (!(in + 1 <= end_in)) { free(str); return ((void*)0); } else ((void)0);
            out += ar_conv_rune_to_utf8(((uint16_t)highbyte << 8) | *in++, out, end_out - out);
            size++;
            break;
        case 2:
            if (!(in + 2 <= end_in)) { free(str); return ((void*)0); } else ((void)0);
            out += ar_conv_rune_to_utf8(((uint16_t)*(in + 1) << 8) | *in, out, end_out - out);
            in += 2;
            size++;
            break;
        case 3:
            if (!(in + 1 <= end_in)) { free(str); return ((void*)0); } else ((void)0);
            length = *in++;
            if ((length & 0x80)) {
                uint8_t correction = *in++;
                for (i = 0; i < (length & 0x7F) + 2; i++) {
                    if (!(size < len)) { free(str); return ((void*)0); } else ((void)0);
                    out += ar_conv_rune_to_utf8(((uint16_t)highbyte << 8) | (data[size] + (correction & 0xFF)), out, end_out - out);
                    size++;
                }
            }
            else {
                for (i = 0; i < (length & 0x7F) + 2; i++) {
                    if (!(size < len)) { free(str); return ((void*)0); } else ((void)0);
                    out += ar_conv_rune_to_utf8(data[size], out, end_out - out);
                    size++;
                }
            }
            break;
        }
    }

    return str;


}
