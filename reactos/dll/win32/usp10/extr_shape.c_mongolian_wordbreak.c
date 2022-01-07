
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL mongolian_wordbreak(WCHAR chr)
{
    return ((chr == 0x0020) || (chr == 0x200C) || (chr == 0x202F) || (chr == 0x180E) || (chr == 0x1800) || (chr == 0x1802) || (chr == 0x1803) || (chr == 0x1805) || (chr == 0x1808) || (chr == 0x1809) || (chr == 0x1807));
}
