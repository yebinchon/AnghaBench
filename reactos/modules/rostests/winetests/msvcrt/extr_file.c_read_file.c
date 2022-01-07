
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int HANDLE ;
typedef size_t DWORD ;


 int FILE_BEGIN ;
 int ReadFile (int ,char*,int,size_t*,int *) ;
 int SetFilePointer (int ,int ,int *,int ) ;

__attribute__((used)) static const char *read_file( HANDLE file )
{
    static char buffer[128];
    DWORD ret;
    SetFilePointer( file, 0, ((void*)0), FILE_BEGIN );
    if (!ReadFile( file, buffer, sizeof(buffer) - 1, &ret, ((void*)0))) ret = 0;
    buffer[ret] = 0;
    return buffer;
}
