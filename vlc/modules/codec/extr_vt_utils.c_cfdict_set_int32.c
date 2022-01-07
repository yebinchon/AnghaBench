
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;
typedef int CFNumberRef ;
typedef int CFMutableDictionaryRef ;


 int CFDictionarySetValue (int ,int ,int ) ;
 int CFNumberCreate (int *,int ,int*) ;
 int CFRelease (int ) ;
 int kCFNumberSInt32Type ;

void
cfdict_set_int32(CFMutableDictionaryRef dict, CFStringRef key, int value)
{
    CFNumberRef number = CFNumberCreate(((void*)0), kCFNumberSInt32Type, &value);
    CFDictionarySetValue(dict, key, number);
    CFRelease(number);
}
