
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int EACCES ;
 int EINVAL ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,int *,size_t) ;
 size_t WideCharToMultiByte (int ,int ,int *,int,char*,size_t,int *,int *) ;
 size_t _MAX_PATH ;
 int * _wfullpath (int *,int *,size_t) ;
 int errno ;
 int free (int *) ;
 int * malloc (size_t) ;

char *realpath(const char * restrict relpath, char * restrict resolved_path)
{
    if (relpath == ((void*)0))
    {
        errno = EINVAL;
        return ((void*)0);
    }
    (void)resolved_path;

    errno = EACCES;
    return ((void*)0);
}
