
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetTempFileNameA (char*,char*,int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ WriteFile (scalar_t__,unsigned char*,int,int *,int *) ;

__attribute__((used)) static BOOL create_temp_file(char *name)
{
    UINT r;
    unsigned char buffer[26], i;
    DWORD sz;
    HANDLE handle;

    r = GetTempFileNameA(".", "msitest",0,name);
    if(!r)
        return r;
    handle = CreateFileA(name, GENERIC_READ|GENERIC_WRITE,
        0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if(handle==INVALID_HANDLE_VALUE)
        return FALSE;
    for(i=0; i<26; i++)
        buffer[i]=i+'a';
    r = WriteFile(handle,buffer,sizeof buffer,&sz,((void*)0));
    CloseHandle(handle);
    return r;
}
