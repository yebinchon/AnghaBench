
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int CHAR ;


 int ERR (char*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char* const) ;
 scalar_t__ strlen (char* const) ;

char* flatten_cmdline(const char *prog, char* const argv[])
{
    int i;
    SIZE_T argstr_size = 0;
    char *argstr, *p;


    argstr_size += strlen(prog) + 3;
    for(i = 0; argv[i] != ((void*)0); ++i)
    {
        argstr_size += strlen(argv[i]) + 1;
    }
    argstr = HeapAlloc(GetProcessHeap(), 0, (argstr_size + 1) * sizeof(CHAR));
    if (argstr == ((void*)0))
    {
        ERR("ERROR: Not enough memory\n");
        return ((void*)0);
    }


    p = argstr;
    strcpy(p, "\"");
    strcat(p, prog);
    strcat(p, "\" ");
    p += strlen(p);
    for(i = 0; argv[i] != ((void*)0); ++i)
    {
        strcpy(p, argv[i]);
        p += strlen(argv[i]);
        *p++ = ' ';
    }
    *p = '\0';

    return argstr;
}
