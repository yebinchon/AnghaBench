
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_7__ {int X; int Y; } ;
typedef int HANDLE ;
typedef int const DWORD ;
typedef TYPE_1__ COORD ;


 scalar_t__ DEFAULT_ATTRIB ;
 int const ENABLE_PROCESSED_OUTPUT ;
 int const ENABLE_WRAP_AT_EOL_OUTPUT ;
 scalar_t__ GetConsoleMode (int ,int const*) ;
 int ReadConsoleOutputAttribute (int ,scalar_t__*,int,TYPE_1__,int const*) ;
 scalar_t__ SetConsoleCursorPosition (int ,TYPE_1__) ;
 scalar_t__ SetConsoleMode (int ,int const) ;
 scalar_t__ TEST_ATTRIB ;
 scalar_t__ WriteConsoleA (int ,char const*,int const,int const*,int *) ;
 int ok (int,char*) ;
 int okCHAR (int ,TYPE_1__,char const,scalar_t__) ;
 int okCURSOR (int ,TYPE_1__) ;
 char const* strchr (char const*,char) ;
 int strlen (char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void testWriteNotWrappedProcessed(HANDLE hCon, COORD sbSize)
{
    COORD c;
    DWORD len, mode;
    const char* mytest = "abcd\nf\tg";
    const int mylen = strlen(mytest);
    const int mylen2 = strchr(mytest, '\n') - mytest;
    int p;
    WORD attr;

    ok(GetConsoleMode(hCon, &mode) && SetConsoleMode(hCon, (mode | ENABLE_PROCESSED_OUTPUT) & ~ENABLE_WRAP_AT_EOL_OUTPUT),
       "clearing wrap at EOL & setting processed output\n");


    c.X = sbSize.X - 5; c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left-5\n");

    ok(WriteConsoleA(hCon, mytest, mylen, &len, ((void*)0)) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (c.X = sbSize.X - 5; c.X < sbSize.X - 1; c.X++)
    {
        okCHAR(hCon, c, mytest[c.X - sbSize.X + 5], TEST_ATTRIB);
    }

    ReadConsoleOutputAttribute(hCon, &attr, 1, c, &len);

    if (attr == TEST_ATTRIB)
    {
        win_skip("Win9x/WinMe don't respect ~ENABLE_WRAP_AT_EOL_OUTPUT\n");
        return;
    }

    okCHAR(hCon, c, ' ', DEFAULT_ATTRIB);

    c.X = 0; c.Y++;
    okCHAR(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        okCHAR(hCon, c, ' ', TEST_ATTRIB);
    okCHAR(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    okCHAR(hCon, c, ' ', DEFAULT_ATTRIB);

    okCURSOR(hCon, c);


    c.X = sbSize.X - 4; c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left-4\n");

    ok(WriteConsoleA(hCon, mytest, mylen, &len, ((void*)0)) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (c.X = sbSize.X - 4; c.X < sbSize.X; c.X++)
    {
        okCHAR(hCon, c, mytest[c.X - sbSize.X + 4], TEST_ATTRIB);
    }
    c.X = 0; c.Y++;
    okCHAR(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        okCHAR(hCon, c, ' ', TEST_ATTRIB);
    okCHAR(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    okCHAR(hCon, c, ' ', DEFAULT_ATTRIB);

    okCURSOR(hCon, c);


    c.X = sbSize.X - 3; c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left-4\n");

    ok(WriteConsoleA(hCon, mytest, mylen, &len, ((void*)0)) != 0 && len == mylen, "WriteConsole\n");
    c.Y = 0;
    for (p = mylen2 - 3; p < mylen2; p++)
    {
        c.X = sbSize.X - 3 + p % 3;
        okCHAR(hCon, c, mytest[p], TEST_ATTRIB);
    }
    c.X = 0; c.Y = 1;
    okCHAR(hCon, c, mytest[5], TEST_ATTRIB);
    for (c.X = 1; c.X < 8; c.X++)
        okCHAR(hCon, c, ' ', TEST_ATTRIB);
    okCHAR(hCon, c, mytest[7], TEST_ATTRIB);
    c.X++;
    okCHAR(hCon, c, ' ', DEFAULT_ATTRIB);

    okCURSOR(hCon, c);
}
