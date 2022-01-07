
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_COLUMNS ;
 int LINE_BUFFER_SIZE ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*) ;
 int sprintf (char*,char*,char const*) ;
 size_t strlen (char const*) ;

void OUTPUT_Line(const char *szLine)
{
    int spaceIndex = 0;
    char output[LINE_BUFFER_SIZE];

    memset(output, 0, DISPLAY_COLUMNS + 2);




    if (DISPLAY_COLUMNS - 2 < strlen(szLine))
    {
        for (spaceIndex = DISPLAY_COLUMNS / 2; spaceIndex < DISPLAY_COLUMNS - 2; spaceIndex++)
        {
            if (' ' == szLine[spaceIndex])
            {
                break;
            }
        }

        memcpy(output + 2, szLine, spaceIndex + 1);
        output[0] = '|';
        output[1] = ' ';
        output[strlen(output)] = '\n';
        printf(output);

        OUTPUT_Line(szLine + spaceIndex + 1);
    }
    else
    {
        sprintf(output,"| %s\n", szLine);
        printf(output);
    }

}
