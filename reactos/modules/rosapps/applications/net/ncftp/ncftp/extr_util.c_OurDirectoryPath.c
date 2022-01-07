
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Path (char* const,size_t const,int ,char const* const) ;
 int gOurDirectoryPath ;

char *
OurDirectoryPath(char *const dst, const size_t siz, const char *const fname)
{
 return (Path(dst, siz, gOurDirectoryPath, fname));
}
