
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annexb_startcode4 ;
 scalar_t__ memcmp (void const*,int ,int) ;

__attribute__((used)) static bool
hxxx_extra_isannexb(const void *p_extra, size_t i_extra)
{
    return i_extra == 0
        || (i_extra > 4 && memcmp(p_extra, annexb_startcode4, 4) == 0);
}
