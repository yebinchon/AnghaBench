
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;
typedef scalar_t__ CFIndex ;
typedef int CFArrayRef ;


 scalar_t__ CFArrayGetCount (int ) ;
 int CFArrayGetValueAtIndex (int ,int ) ;
 char* FromCFString (int ,int ) ;
 int kCFStringEncodingASCII ;

__attribute__((used)) static char* CFArrayALPNCopyFirst(CFArrayRef alpnArray)
{
    CFIndex count = CFArrayGetCount(alpnArray);

    if (count <= 0)
        return ((void*)0);

    CFStringRef alpnVal = CFArrayGetValueAtIndex(alpnArray, 0);
    return FromCFString(alpnVal, kCFStringEncodingASCII);
}
