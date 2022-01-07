
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X; scalar_t__ Y; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;


 scalar_t__ SetConsoleCursorPosition (int ,TYPE_1__) ;
 scalar_t__ WriteConsoleA (int ,char const*,int,int*,int *) ;
 int ok (int,char*) ;
 int okCURSOR (int ,TYPE_1__) ;

__attribute__((used)) static void testEmptyWrite(HANDLE hCon)
{
    static const char emptybuf[16];
    COORD c;
    DWORD len;

    c.X = c.Y = 0;
    ok(SetConsoleCursorPosition(hCon, c) != 0, "Cursor in upper-left\n");

    len = -1;
    ok(WriteConsoleA(hCon, ((void*)0), 0, &len, ((void*)0)) != 0 && len == 0, "WriteConsole\n");
    okCURSOR(hCon, c);




    if (0)
    {
        len = -1;
        ok(!WriteConsoleA(hCon, ((void*)0), 16, &len, ((void*)0)) && len == -1, "WriteConsole\n");
        okCURSOR(hCon, c);


        len = -1;
        ok(WriteConsoleA(hCon, ((void*)0), 128, &len, ((void*)0)) != 0 && len == 128, "WriteConsole\n");
    }

    len = -1;
    ok(WriteConsoleA(hCon, emptybuf, 0, &len, ((void*)0)) != 0 && len == 0, "WriteConsole\n");
    okCURSOR(hCon, c);



    len = -1;
    ok(WriteConsoleA(hCon, emptybuf, 16, &len, ((void*)0)) != 0 && len == 16, "WriteConsole\n");
    c.X += 16;
    okCURSOR(hCon, c);
}
