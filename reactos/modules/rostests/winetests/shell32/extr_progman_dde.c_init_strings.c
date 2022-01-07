
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_COMMON_PROGRAMS ;
 int CSIDL_PROGRAMS ;
 int FALSE ;
 int MAX_PATH ;
 int ProgramsDir ;
 int SHGetSpecialFolderPathA (int *,char*,int ,int ) ;
 int lstrcpyA (int ,char*) ;
 scalar_t__ use_common () ;

__attribute__((used)) static void init_strings(void)
{
    char commonprograms[MAX_PATH];
    char programs[MAX_PATH];

    SHGetSpecialFolderPathA(((void*)0), programs, CSIDL_PROGRAMS, FALSE);
    SHGetSpecialFolderPathA(((void*)0), commonprograms, CSIDL_COMMON_PROGRAMS, FALSE);





    if (use_common())
        lstrcpyA(ProgramsDir, commonprograms);
    else
        lstrcpyA(ProgramsDir, programs);
}
