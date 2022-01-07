
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * CFStringRef ;
typedef int * CFMutableArrayRef ;


 int CFArrayAppendValue (int *,int *) ;
 int * CFArrayCreateMutable (int ,int ,int *) ;
 int CFRelease (int *) ;
 int * CFStringCreateWithCString (int ,char const* const,int ) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingASCII ;
 int kCFTypeArrayCallBacks ;

__attribute__((used)) static CFMutableArrayRef alpnToCFArray(const char *const *alpn)
{
    CFMutableArrayRef alpnValues =
            CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);

    for (size_t i = 0; alpn[i] != ((void*)0); i++) {
        CFStringRef alpnVal =
                CFStringCreateWithCString(kCFAllocatorDefault, alpn[i], kCFStringEncodingASCII);
        if (alpnVal == ((void*)0)) {

            CFRelease(alpnValues);
            return ((void*)0);
        }
        CFArrayAppendValue(alpnValues, alpnVal);
        CFRelease(alpnVal);
    }
    return alpnValues;
}
