
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int ** CommandLineToArgvW (int ,int*) ;
 int GetCommandLineW () ;
 int GetProcessHeap () ;
 char** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int **) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;

__attribute__((used)) static void get_utf8_args(int *argc, char ***argv)
{
    WCHAR **argvw;
    int size=0, i;
    char *current_arg;

    argvw = CommandLineToArgvW(GetCommandLineW(), argc);

    for (i=0; i<*argc; i++)
    {
        size += sizeof(char*);
        size += WideCharToMultiByte(CP_UTF8, 0, argvw[i], -1, ((void*)0), 0, ((void*)0), ((void*)0));
    }
    size += sizeof(char*);

    *argv = HeapAlloc(GetProcessHeap(), 0, size);
    current_arg = (char*)(*argv + *argc + 1);

    for (i=0; i<*argc; i++)
    {
        (*argv)[i] = current_arg;
        current_arg += WideCharToMultiByte(CP_UTF8, 0, argvw[i], -1, current_arg, size, ((void*)0), ((void*)0));
    }

    (*argv)[*argc] = ((void*)0);

    HeapFree(GetProcessHeap(), 0, argvw);
}
