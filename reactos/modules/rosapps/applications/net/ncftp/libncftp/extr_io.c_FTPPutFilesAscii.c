
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPPutFiles3 (int const,char const* const,char const* const,int const,int const,int ,int ,int *,int *,int ,int ,int ,int ) ;
 int NoConfirmResumeUploadProc ;
 int kDeleteNo ;
 int kResumeNo ;
 int kTypeAscii ;

int
FTPPutFilesAscii(const FTPCIPtr cip, const char *const pattern, const char *const dstdir, const int recurse, const int doGlob)
{
 return (FTPPutFiles3(cip, pattern, dstdir, recurse, doGlob, kTypeAscii, 0, ((void*)0), ((void*)0), kResumeNo, kDeleteNo, NoConfirmResumeUploadProc, 0));
}
