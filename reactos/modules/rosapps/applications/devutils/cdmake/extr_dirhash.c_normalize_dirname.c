
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DIR_SEPARATOR_CHAR ;
 char toupper (char) ;

void normalize_dirname(char *filename)
{
    int i, tgt;
    int slash = 1;

    for (i = 0, tgt = 0; filename[i]; i++)
    {
        if (slash)
        {
            if (filename[i] != '/' && filename[i] != '\\')
            {
                filename[tgt++] = toupper(filename[i]);
                slash = 0;
            }
        }
        else
        {
            if (filename[i] == '/' || filename[i] == '\\')
            {
                slash = 1;
                filename[tgt++] = DIR_SEPARATOR_CHAR;
            }
            else
            {
                filename[tgt++] = toupper(filename[i]);
            }
        }
    }
    filename[tgt] = '\0';
}
