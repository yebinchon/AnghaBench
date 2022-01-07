
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LineListPtr ;
typedef int FTPCIPtr ;


 int FTPListToMemory2 (int const,char const* const,int const,char const* const,int,int*) ;

int
FTPListToMemory(const FTPCIPtr cip, const char *const pattern, const LineListPtr llines, const char *const lsflags)
{
 return (FTPListToMemory2(cip, pattern, llines, lsflags, 1, (int *) 0));
}
