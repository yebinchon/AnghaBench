
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int WIM_HAS_7Z_EXTRACT ;
 int WIM_HAS_API_EXTRACT ;
 int WIM_HAS_EXTRACT (int ) ;
 int WimExtractCheck () ;
 scalar_t__ WimExtractFile_7z (char const*,int,char const*,char const*) ;
 scalar_t__ WimExtractFile_API (char const*,int,char const*,char const*) ;
 int wim_flags ;

BOOL WimExtractFile(const char* image, int index, const char* src, const char* dst)
{
 if ((wim_flags == 0) && (!WIM_HAS_EXTRACT(WimExtractCheck())))
  return FALSE;
 if ((image == ((void*)0)) || (src == ((void*)0)) || (dst == ((void*)0)))
  return FALSE;



 return ( ((wim_flags & WIM_HAS_7Z_EXTRACT) && WimExtractFile_7z(image, index, src, dst))
    || ((wim_flags & WIM_HAS_API_EXTRACT) && WimExtractFile_API(image, index, src, dst)) );
}
