
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static unsigned vlc_http_can_read(const char *buf, size_t len)
{
    static const char end[4] = { '\r', '\n', '\r', '\n' };

    for (unsigned i = 4; i > 0; i--)
        if (len >= i && !memcmp(buf + len - i, end, i))
            return 4 - i;
    return 4;
}
