
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
 int kTarYes ;
 int kTypeBinary ;

int
FTPGetFiles(const FTPCIPtr cip, const char *const pattern, const char *const dstdir, const int recurse, const int doGlob)
{
 return (FTPGetFiles3(cip, pattern, dstdir, recurse, doGlob, kTypeBinary, kResumeNo, kAppendNo, kDeleteNo, kTarYes, (ConfirmResumeDownloadProc) 0, 0));
}
