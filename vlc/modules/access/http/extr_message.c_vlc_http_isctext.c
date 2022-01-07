
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int vlc_http_isctext(int c)
{
    return (c == '\t') || (c == ' ') || (c >= 0x21 && c <= 0x27)
        || (c >= 0x2A && c <= 0x5B) || (c >= 0x5D && c <= 0x7E)
        || (c >= 0x80);
}
