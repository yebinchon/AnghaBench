
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPMkdir2 (int const,char const* const,int const,int *) ;

int
FTPMkdir(const FTPCIPtr cip, const char *const newDir, const int recurse)
{
 return (FTPMkdir2(cip, newDir, recurse, ((void*)0)));
}
