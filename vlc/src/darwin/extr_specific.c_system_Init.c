
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_locale ;
typedef int CFStringRef ;
typedef scalar_t__ CFArrayRef ;


 scalar_t__ CFArrayGetCount (scalar_t__) ;
 int CFArrayGetValueAtIndex (scalar_t__,int ) ;
 scalar_t__ CFBundleCopyLocalizationsForPreferences (scalar_t__,int *) ;
 scalar_t__ CFLocaleCopyAvailableLocaleIdentifiers () ;
 int CFRelease (scalar_t__) ;
 int CFStringGetCString (int ,char*,int,int ) ;
 int * getenv (char*) ;
 int kCFStringEncodingUTF8 ;
 int setenv (char*,char*,int) ;

void system_Init(void)
{
}
