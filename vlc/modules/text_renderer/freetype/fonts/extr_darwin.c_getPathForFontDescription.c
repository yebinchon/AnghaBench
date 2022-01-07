
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTFontDescriptorRef ;
typedef int CFURLRef ;
typedef int CFStringRef ;


 int CFRelease (int ) ;
 int CFURLCopyFileSystemPath (int ,int ) ;
 int CTFontDescriptorCopyAttribute (int ,int ) ;
 char* FromCFString (int ,int ) ;
 int kCFStringEncodingUTF8 ;
 int kCFURLPOSIXPathStyle ;
 int kCTFontURLAttribute ;

char* getPathForFontDescription(CTFontDescriptorRef fontDescriptor)
{
    CFURLRef url = CTFontDescriptorCopyAttribute(fontDescriptor, kCTFontURLAttribute);
    CFStringRef path = CFURLCopyFileSystemPath(url, kCFURLPOSIXPathStyle);
    char *retPath = FromCFString(path, kCFStringEncodingUTF8);
    CFRelease(path);
    CFRelease(url);
    return retPath;
}
