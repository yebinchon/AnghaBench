
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPFileExists2 (int const,char const* const,int,int,int,int,int) ;

int
FTPFileExists(const FTPCIPtr cip, const char *const file)
{
 return (FTPFileExists2(cip, file, 1, 1, 1, 1, 1));
}
