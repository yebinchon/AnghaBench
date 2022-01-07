
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* Buffer; int Length; int MaximumLength; } ;
typedef TYPE_1__ STRING ;


 int _snprintf (char*,int,char*,TYPE_1__*,int,int ) ;
 int ok_int (int,int) ;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,TYPE_1__*) ;

void
test_Z()
{
    char buffer[128];
    STRING string;
    int result;

    string.Buffer = "Test\0Hallo";
    string.Length = 4;
    string.MaximumLength = 5;

    sprintf(buffer, "%Z", &string);
    ok_str(buffer, "Test");

    string.Length = 8;
    sprintf(buffer, "%Z", &string);
    ok_str(buffer, "Test");

    string.Length = 3;
    sprintf(buffer, "%Z", &string);
    ok_str(buffer, "Tes");

    string.Buffer = 0;
    sprintf(buffer, "%Z", &string);
    ok_str(buffer, "(null)");

    sprintf(buffer, "%Z", 0);
    ok_str(buffer, "(null)");

    string.Buffer = (char*)L"Test\0Hallo";
    string.Length = 8;
    string.MaximumLength = 10;


    string.Buffer = (char*)L"test";
    string.Length = 12;
    string.MaximumLength = 15;
    result = _snprintf(buffer, 127, "%Z %u%c", &string, 1, 0);
    ok_int(result, 15);

}
