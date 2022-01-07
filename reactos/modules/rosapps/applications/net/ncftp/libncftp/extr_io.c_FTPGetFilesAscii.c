
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;
typedef int ConfirmResumeDownloadProc ;


 int FTPGetFiles3 (int const,char const* const,char const* const,int const,int const,int ,int ,int ,int ,int ,int ,int ) ;
 int kAppendNo ;
 int kDeleteNo ;
 int kResumeNo ;
 int kTarNo ;
 int kTypeAscii ;

int
FTPGetFilesAscii(const FTPCIPtr cip, const char *const pattern, const char *const dstdir, const int recurse, const int doGlob)
{
 return (FTPGetFiles3(cip, pattern, dstdir, recurse, doGlob, kTypeAscii, kResumeNo, kAppendNo, kDeleteNo, kTarNo, (ConfirmResumeDownloadProc) 0, 0));
}
