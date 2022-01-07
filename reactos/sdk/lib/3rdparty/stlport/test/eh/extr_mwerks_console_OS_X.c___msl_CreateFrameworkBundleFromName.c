
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OSErr ;
typedef int FSRef ;
typedef int * CFURLRef ;
typedef int CFStringRef ;
typedef int CFBundleRef ;


 int CFBundleCreate (int ,int *) ;
 int CFRelease (int *) ;
 int * CFURLCreateCopyAppendingPathComponent (int ,int *,int ,int) ;
 int * CFURLCreateFromFSRef (int ,int *) ;
 scalar_t__ FSFindFolder (int ,int ,int,int *) ;
 int kCFAllocatorSystemDefault ;
 int kFrameworksFolderType ;
 int kOnAppropriateDisk ;
 scalar_t__ noErr ;

__attribute__((used)) static OSErr __msl_CreateFrameworkBundleFromName(CFStringRef theFrameworkName,
    CFBundleRef *theBundle)
  {
    OSErr theErr;
    FSRef theRef;
    CFURLRef theFrameworkURL;
    CFURLRef theBundleURL;


    theErr = FSFindFolder(kOnAppropriateDisk, kFrameworksFolderType, 0, &theRef);

    if (theErr == noErr)
    {

      theFrameworkURL = CFURLCreateFromFSRef(kCFAllocatorSystemDefault, &theRef);

      if (theFrameworkURL != ((void*)0))
      {

        theBundleURL = CFURLCreateCopyAppendingPathComponent(kCFAllocatorSystemDefault,
          theFrameworkURL, theFrameworkName, 0);

        CFRelease(theFrameworkURL);

        if (theBundleURL != ((void*)0))
        {

          *theBundle = CFBundleCreate(kCFAllocatorSystemDefault, theBundleURL);

          CFRelease(theBundleURL);
        }
      }
    }

    return theErr;
  }
