
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int X; int Y; } ;
typedef int HANDLE ;
typedef int const DWORD ;
typedef TYPE_1__ COORD ;


 int DEFAULT_ATTRIB ;
 int const ENABLE_PROCESSED_OUTPUT ;
 int const ENABLE_WRAP_AT_EOL_OUTPUT ;
 scalar_t__ GetConsoleMode (int ,int const*) ;
 scalar_t__ SetConsoleCursorPosition (int ,TYPE_1__) ;
 scalar_t__ SetConsoleMode (int ,int const) ;
 int TEST_ATTRIB ;
 int WriteConsoleA (int ,char const*,int const,int const*,int *) ;
 int ok (int,char*,...) ;
 int okCHAR (int ,TYPE_1__,char const,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void testWriteNotWrappedNotProcessed(HANDLE hCon, COORD sbSize)
{
    COORD c;
    DWORD len, mode;
    const char* mytest = "123";
    const int mylen = strlen(mytest);
    int ret;
    int p;

    ok(GetConsoleMode(hCon, &mode) && SetConsoleMode(hCon, mode & ~(ENABLE_PROCESSED_OUTPUT|ENABLE_WRAP_AT_EOL_OUTPUT)),
       "clearing wrap at EOL & processed output\n");


    c.X = sbSize.X - 3; c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left-3\n");

    ret = WriteConsoleA(hCon, mytest, mylen, &len, ((void*)0));
    ok(ret != 0 && len == mylen, "Couldn't write, ret = %d, len = %d\n", ret, len);
    c.Y = 0;
    for (p = mylen - 3; p < mylen; p++)
    {
        c.X = sbSize.X - 3 + p % 3;
        okCHAR(hCon, c, mytest[p], TEST_ATTRIB);
    }

    c.X = 0; c.Y = 1;
    okCHAR(hCon, c, ' ', DEFAULT_ATTRIB);

    p = sbSize.X - 3 + mylen % 3;
    c.X = p; c.Y = 0;


    c.X = sbSize.X - mylen; c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left-3\n");

    ok(WriteConsoleA(hCon, mytest, mylen, &len, ((void*)0)) != 0 && len == mylen, "WriteConsole\n");
}
