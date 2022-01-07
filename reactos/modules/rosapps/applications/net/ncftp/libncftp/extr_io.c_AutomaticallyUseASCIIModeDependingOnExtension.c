
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * asciiFilenameExtensions; } ;
typedef TYPE_1__* FTPCIPtr ;


 scalar_t__ FilenameExtensionIndicatesASCII (char const* const,int *) ;
 int kTypeAscii ;
 int kTypeBinary ;

__attribute__((used)) static void
AutomaticallyUseASCIIModeDependingOnExtension(const FTPCIPtr cip, const char *const pathName, int *const xtype)
{
 if ((*xtype == kTypeBinary) && (cip->asciiFilenameExtensions != ((void*)0))) {
  if (FilenameExtensionIndicatesASCII(pathName, cip->asciiFilenameExtensions)) {




   *xtype = kTypeAscii;
  }
 }
}
