
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; char* drive; char* dir; char* file; char* ext; int expected; } ;
typedef TYPE_1__ makepath_case ;
typedef char WCHAR ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int CP_ACP ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 char* USE_BUFF ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int _makepath (char*,char*,char*,char*,char*) ;
 int _wmakepath (char*,char*,char*,char*,char*) ;
 TYPE_1__* makepath_cases ;
 int memset (char*,char,int) ;
 int ok (int,char*,char*,unsigned int) ;
 int strcmp (int ,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_makepath(void)
{
    WCHAR driveW[MAX_PATH];
    WCHAR dirW[MAX_PATH];
    WCHAR fileW[MAX_PATH];
    WCHAR extW[MAX_PATH];
    WCHAR bufferW[MAX_PATH];
    char buffer[MAX_PATH];

    unsigned int i, n;

    for (i = 0; i < ARRAY_SIZE(makepath_cases); ++i)
    {
        const makepath_case* p = &makepath_cases[i];

        memset(buffer, 'X', MAX_PATH);
        if (p->buffer)
            strcpy(buffer, p->buffer);


        _makepath(buffer,
                  p->drive == USE_BUFF ? buffer : p->drive,
                  p->dir == USE_BUFF ? buffer : p->dir,
                  p->file == USE_BUFF? buffer : p->file,
                  p->ext == USE_BUFF ? buffer : p->ext);

        buffer[MAX_PATH - 1] = '\0';
        ok(!strcmp(p->expected, buffer), "got '%s' for case %d\n", buffer, i);


        if (p->drive != USE_BUFF) MultiByteToWideChar(CP_ACP, 0, p->drive, -1, driveW, MAX_PATH);
        if (p->dir != USE_BUFF) MultiByteToWideChar(CP_ACP, 0, p->dir, -1, dirW, MAX_PATH);
        if (p->file != USE_BUFF) MultiByteToWideChar(CP_ACP, 0, p->file, -1, fileW, MAX_PATH);
        if (p->ext != USE_BUFF) MultiByteToWideChar(CP_ACP, 0, p->ext, -1, extW, MAX_PATH);

        memset(buffer, 0, MAX_PATH);
        for (n = 0; n < MAX_PATH; ++n)
            bufferW[n] = 'X';
        if (p->buffer) MultiByteToWideChar( CP_ACP, 0, p->buffer, -1, bufferW, MAX_PATH);

        _wmakepath(bufferW,
                   p->drive == USE_BUFF ? bufferW : p->drive ? driveW : ((void*)0),
                   p->dir == USE_BUFF ? bufferW : p->dir ? dirW : ((void*)0),
                   p->file == USE_BUFF? bufferW : p->file ? fileW : ((void*)0),
                   p->ext == USE_BUFF ? bufferW : p->ext ? extW : ((void*)0));

        bufferW[MAX_PATH - 1] = '\0';
        WideCharToMultiByte(CP_ACP, 0, bufferW, -1, buffer, MAX_PATH, ((void*)0), ((void*)0));
        ok(!strcmp(p->expected, buffer), "got '%s' for unicode case %d\n", buffer, i);
    }
}
