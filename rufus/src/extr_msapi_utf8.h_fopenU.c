
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _wfopen_s (int **,int ,int ) ;
 int wconvert (char const*) ;
 int wfilename ;
 int wfree (char const*) ;
 int wmode ;

__attribute__((used)) static __inline FILE* fopenU(const char* filename, const char* mode)
{
 FILE* ret = ((void*)0);
 wconvert(filename);
 wconvert(mode);
 _wfopen_s(&ret, wfilename, wmode);
 wfree(filename);
 wfree(mode);
 return ret;
}
