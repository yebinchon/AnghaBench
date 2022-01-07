
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ Get7ZipPath () ;
 int PF_INIT (int ,int ) ;
 int WIMApplyImage ;
 int WIMCloseHandle ;
 int WIMCreateFile ;
 int WIMExtractImagePath ;
 int WIMGetImageInformation ;
 int WIMLoadImage ;
 int WIMRegisterMessageCallback ;
 int WIMSetTemporaryPath ;
 int WIMUnregisterMessageCallback ;
 int WIM_HAS_7Z_EXTRACT ;
 int WIM_HAS_API_APPLY ;
 int WIM_HAS_API_EXTRACT ;
 int WIM_HAS_EXTRACT (int) ;
 int Wimgapi ;
 scalar_t__ pfWIMApplyImage ;
 scalar_t__ pfWIMCloseHandle ;
 scalar_t__ pfWIMCreateFile ;
 scalar_t__ pfWIMExtractImagePath ;
 scalar_t__ pfWIMLoadImage ;
 scalar_t__ pfWIMRegisterMessageCallback ;
 scalar_t__ pfWIMSetTemporaryPath ;
 scalar_t__ pfWIMUnregisterMessageCallback ;
 int uprintf (char*,char*,...) ;
 int wim_flags ;

uint8_t WimExtractCheck(void)
{
 PF_INIT(WIMCreateFile, Wimgapi);
 PF_INIT(WIMSetTemporaryPath, Wimgapi);
 PF_INIT(WIMLoadImage, Wimgapi);
 PF_INIT(WIMApplyImage, Wimgapi);
 PF_INIT(WIMExtractImagePath, Wimgapi);
 PF_INIT(WIMGetImageInformation, Wimgapi);
 PF_INIT(WIMRegisterMessageCallback, Wimgapi);
 PF_INIT(WIMUnregisterMessageCallback, Wimgapi);
 PF_INIT(WIMCloseHandle, Wimgapi);

 if (pfWIMCreateFile && pfWIMSetTemporaryPath && pfWIMLoadImage && pfWIMExtractImagePath && pfWIMCloseHandle)
  wim_flags |= WIM_HAS_API_EXTRACT;
 if (Get7ZipPath())
  wim_flags |= WIM_HAS_7Z_EXTRACT;
 if ((wim_flags & WIM_HAS_API_EXTRACT) && pfWIMApplyImage && pfWIMRegisterMessageCallback && pfWIMUnregisterMessageCallback)
  wim_flags |= WIM_HAS_API_APPLY;

 uprintf("WIM extraction method(s) supported: %s%s%s", (wim_flags & WIM_HAS_7Z_EXTRACT)?"7-Zip":
  ((wim_flags & WIM_HAS_API_EXTRACT)?"":"NONE"),
  (WIM_HAS_EXTRACT(wim_flags) == (WIM_HAS_API_EXTRACT|WIM_HAS_7Z_EXTRACT))?", ":
  "", (wim_flags & WIM_HAS_API_EXTRACT)?"wimgapi.dll":"");
 uprintf("WIM apply method supported: %s", (wim_flags & WIM_HAS_API_APPLY)?"wimgapi.dll":"NONE");
 return wim_flags;
}
