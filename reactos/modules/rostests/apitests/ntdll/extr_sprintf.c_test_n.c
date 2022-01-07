
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __int64 ;


 int ok (int,char*) ;
 int ok_int (int,int) ;
 int sprintf (char*,char*,char*,int*) ;

void
test_n()
{
    int len = 123;
    __int64 len64;
    char buffer[64];

    sprintf(buffer, "%07s%n", "test", &len);
    ok_int(len, 7);

    len = 0x12345678;
    sprintf(buffer, "%s%hn", "test", &len);
    ok_int(len, 0x12340004);

    len = 0x12345678;
    sprintf(buffer, "%s%hhn", "test", &len);
    ok_int(len, 0x12340004);

    len64 = 0x0123456781234567ULL;
    sprintf(buffer, "%s%lln", "test", &len64);
    ok(len64 == 0x123456700000004ULL, " ");

}
