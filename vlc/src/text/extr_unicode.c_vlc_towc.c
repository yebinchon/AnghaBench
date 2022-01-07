
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int assert (int ) ;
 int clz (unsigned char) ;
 scalar_t__ unlikely (int) ;
 int vlc_assert_unreachable () ;

size_t vlc_towc (const char *str, uint32_t *restrict pwc)
{
    uint8_t *ptr = (uint8_t *)str, c;
    uint32_t cp;

    assert (str != ((void*)0));

    c = *ptr;
    if (unlikely(c > 0xF4))
        return -1;

    int charlen = clz((unsigned char)(c ^ 0xFF));
    switch (charlen)
    {
        case 0:
            *pwc = c;
            return c != '\0';

        case 1:
            return -1;

        case 2:
            if (unlikely(c < 0xC2))
                return -1;
            cp = (c & 0x1F) << 6;
            break;

        case 3:
            cp = (c & 0x0F) << 12;
            break;

        case 4:
            cp = (c & 0x07) << 18;
            break;

        default:
            vlc_assert_unreachable ();
    }


    switch (charlen)
    {
        case 4:
            c = *++ptr;
            if (unlikely((c & 0xC0) != 0x80))
                return -1;
            cp |= (c & 0x3F) << 12;

            if (unlikely(cp >= 0x110000))
                return -1;

        case 3:
            c = *++ptr;
            if (unlikely((c & 0xC0) != 0x80))
                return -1;
            cp |= (c & 0x3F) << 6;

            if (unlikely(cp >= 0xD800 && cp < 0xE000))
                return -1;
            if (unlikely(cp < (1u << (5 * charlen - 4))))
                return -1;

        case 2:
            c = *++ptr;
            if (unlikely((c & 0xC0) != 0x80))
                return -1;
            cp |= (c & 0x3F);
            break;
    }

    *pwc = cp;
    return charlen;
}
