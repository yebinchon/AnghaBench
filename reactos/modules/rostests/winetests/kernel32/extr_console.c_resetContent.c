
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;
typedef scalar_t__ BOOL ;


 char CONTENT (TYPE_1__) ;
 int DEFAULT_ATTRIB ;
 int WriteConsoleOutputAttribute (int ,int *,int,TYPE_1__,int *) ;
 int WriteConsoleOutputCharacterA (int ,char*,int,TYPE_1__,int *) ;

__attribute__((used)) static void resetContent(HANDLE hCon, COORD sbSize, BOOL content)
{
    COORD c;
    WORD attr = DEFAULT_ATTRIB;
    char ch;
    DWORD len;

    for (c.X = 0; c.X < sbSize.X; c.X++)
    {
        for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
        {
            ch = (content) ? CONTENT(c) : ' ';
            WriteConsoleOutputAttribute(hCon, &attr, 1, c, &len);
            WriteConsoleOutputCharacterA(hCon, &ch, 1, c, &len);
        }
    }
}
