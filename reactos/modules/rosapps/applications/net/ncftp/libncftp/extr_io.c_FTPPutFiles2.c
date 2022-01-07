
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPPutFiles3 (int const,char const* const,char const* const,int const,int const,int const,int const,char const* const,char const* const,int ,int ,int ,int ) ;
 int NoConfirmResumeUploadProc ;
 int kDeleteNo ;
 int kResumeNo ;

int
FTPPutFiles2(const FTPCIPtr cip, const char *const pattern, const char *const dstdir, const int recurse, const int doGlob, const int xtype, const int appendflag, const char *const tmppfx, const char *const tmpsfx)
{
 return (FTPPutFiles3(cip, pattern, dstdir, recurse, doGlob, xtype, appendflag, tmppfx, tmpsfx, kResumeNo, kDeleteNo, NoConfirmResumeUploadProc, 0));
}
