
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,int) ;

void
test_u()
{
    char buffer[64];

    sprintf(buffer, "%u", 1234);
    ok_str(buffer, "1234");

    sprintf(buffer, "%u", -1234);
    ok_str(buffer, "4294966062");

    sprintf(buffer, "%lu", -1234);
    ok_str(buffer, "4294966062");

    sprintf(buffer, "%llu", -1234);
    ok_str(buffer, "4294966062");

    sprintf(buffer, "%+u", 1234);
    ok_str(buffer, "1234");

    sprintf(buffer, "% u", 1234);
    ok_str(buffer, "1234");

}
