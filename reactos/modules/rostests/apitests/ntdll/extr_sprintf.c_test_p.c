
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 int ok_str (char*,char*) ;
 int sprintf (char*,char*,int) ;

void
test_p()
{
    char buffer[64];

    sprintf(buffer, "%p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, "00123ABC");

    sprintf(buffer, "%#p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, "0X00123ABC");

    sprintf(buffer, "%#012p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, "  0X00123ABC");

    sprintf(buffer, "%9p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, " 00123ABC");

    sprintf(buffer, "%09p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, " 00123ABC");

    sprintf(buffer, "% 9p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, " 00123ABC");

    sprintf(buffer, "%-9p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, "00123ABC ");

    sprintf(buffer, "%4p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, "00123ABC");

    sprintf(buffer, "%9.4p", (void*)(ptrdiff_t)0x123abc);
    ok_str(buffer, " 00123ABC");

    sprintf(buffer, "%I64p", 0x123abc456789ULL);
    ok_str(buffer, "123ABC456789");

    sprintf(buffer, "%hp", 0x123abc);
    ok_str(buffer, "00003ABC");

}
