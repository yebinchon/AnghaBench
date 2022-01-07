
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* PCHAR ;
typedef int FILE ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ fgets (char*,int ,int *) ;
 int gLineCount ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

BOOLEAN
NextLine(PCHAR LineBuffer,
         ULONG BufferSize,
         FILE *File)
{
    PCHAR p, pp;


    while (fgets(LineBuffer, BufferSize, File))
    {

        gLineCount++;


        p = LineBuffer;


        while ((*p) && ((*p == ' ') || (*p == '\t'))) p++;


        if (*p == ';') continue;


        pp = strstr(p, "//");
        if (pp)
        {

            if (pp == p) continue;
            *pp = '\0';
        }
        else
        {

            p = strchr(p, '\n');
            if (p) *p = '\0';
        }


        return TRUE;
    }


    return FALSE;
}
