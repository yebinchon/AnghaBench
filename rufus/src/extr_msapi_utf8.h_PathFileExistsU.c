
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int PathFileExistsW (int ) ;
 int wconvert (char*) ;
 int wfree (char*) ;
 int wszPath ;

__attribute__((used)) static __inline BOOL PathFileExistsU(char* szPath)
{
 BOOL ret;
 wconvert(szPath);
 ret = PathFileExistsW(wszPath);
 wfree(szPath);
 return ret;
}
