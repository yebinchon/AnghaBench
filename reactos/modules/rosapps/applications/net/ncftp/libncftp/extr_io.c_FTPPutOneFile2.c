
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int FTPPutOneFile3 (int const,char const* const,char const* const,int const,int const,int const,char const* const,char const* const,int ,int ,int ,int ) ;
 int NoConfirmResumeUploadProc ;
 int kDeleteNo ;
 int kResumeNo ;

int
FTPPutOneFile2(const FTPCIPtr cip, const char *const file, const char *const dstfile, const int xtype, const int fdtouse, const int appendflag, const char *const tmppfx, const char *const tmpsfx)
{
 return (FTPPutOneFile3(cip, file, dstfile, xtype, fdtouse, appendflag, tmppfx, tmpsfx, kResumeNo, kDeleteNo, NoConfirmResumeUploadProc, 0));
}
