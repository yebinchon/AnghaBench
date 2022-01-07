
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errorOut (char const*) ;
 scalar_t__ readU32FromCharChecked (char const**,unsigned int*) ;

__attribute__((used)) static unsigned readU32FromChar(const char** stringPtr) {
    static const char errorMsg[] = "error: numeric value too large";
    unsigned result;
    if (readU32FromCharChecked(stringPtr, &result)) { errorOut(errorMsg); }
    return result;
}
