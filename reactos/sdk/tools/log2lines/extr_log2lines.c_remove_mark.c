
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
remove_mark(char *Line)
{
    if (Line[1] == ' ' && Line[2] == '<')
        if (Line[0] == '*' || Line[0] == '?')
            return Line + 2;
    return Line;
}
