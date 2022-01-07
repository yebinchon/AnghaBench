
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;
typedef int ConfirmResumeDownloadProc ;


 int FTPGetOneFile3 (int const,char const* const,char const* const,int ,int,int ,int ,int ,int ,int ) ;
 int kAppendNo ;
 int kDeleteNo ;
 int kResumeNo ;
 int kTypeBinary ;

int
FTPGetOneFile(const FTPCIPtr cip, const char *const file, const char *const dstfile)
{
 return (FTPGetOneFile3(cip, file, dstfile, kTypeBinary, -1, kResumeNo, kAppendNo, kDeleteNo, (ConfirmResumeDownloadProc) 0, 0));
}
