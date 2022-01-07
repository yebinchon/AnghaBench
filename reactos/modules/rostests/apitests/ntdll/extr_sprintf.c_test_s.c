
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,char*) ;

void
test_s()
{
    char buffer[64];

    sprintf(buffer, "%s", "test");
    ok_str(buffer, "test");

    sprintf(buffer, "%S", L"test");
    ok_str(buffer, "test");

    sprintf(buffer, "%ls", L"test");
    ok_str(buffer, "test");

    sprintf(buffer, "%ws", L"test");
    ok_str(buffer, "test");

    sprintf(buffer, "%hs", "test");
    ok_str(buffer, "test");

    sprintf(buffer, "%hS", "test");
    ok_str(buffer, "test");

    sprintf(buffer, "%7s", "test");
    ok_str(buffer, "   test");

    sprintf(buffer, "%07s", "test");
    ok_str(buffer, "000test");

    sprintf(buffer, "%.3s", "test");
    ok_str(buffer, "tes");

    sprintf(buffer, "%+7.3s", "test");
    ok_str(buffer, "    tes");

    sprintf(buffer, "%+4.0s", "test");
    ok_str(buffer, "    ");


}
