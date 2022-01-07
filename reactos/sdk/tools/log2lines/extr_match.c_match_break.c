
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;



__attribute__((used)) static int match_break(FILE *outFile, char *Line, int processed)
{
    static int state = 0;

    if ( processed ) return processed;
    switch (state)
    {
    case 1:
        state = 0;
        break;
    default:
        state = 0;
    }
    return 1;
}
