
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPPutOneFile3 (int const,char const* const,char const* const,int ,int,int ,int *,int *,int ,int ,int ,int ) ;
 int NoConfirmResumeUploadProc ;
 int kDeleteNo ;
 int kResumeNo ;
 int kTypeBinary ;

int
FTPPutOneFile(const FTPCIPtr cip, const char *const file, const char *const dstfile)
{
 return (FTPPutOneFile3(cip, file, dstfile, kTypeBinary, -1, 0, ((void*)0), ((void*)0), kResumeNo, kDeleteNo, NoConfirmResumeUploadProc, 0));
}
