
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;
typedef int ConfirmResumeDownloadProc ;


 int FTPGetOneFile3 (int const,char const* const,char const* const,int const,int const,int const,int const,int ,int ,int ) ;
 int kDeleteNo ;

int
FTPGetOneFile2(const FTPCIPtr cip, const char *const file, const char *const dstfile, const int xtype, const int fdtouse, const int resumeflag, const int appendflag)
{
 return (FTPGetOneFile3(cip, file, dstfile, xtype, fdtouse, resumeflag, appendflag, kDeleteNo, (ConfirmResumeDownloadProc) 0, 0));
}
