
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GifPrefixType ;


 int LZ_MAX_CODE ;

__attribute__((used)) static int
DGifGetPrefixChar(const GifPrefixType *Prefix,
                  int Code,
                  int ClearCode) {

    int i = 0;

    while (Code > ClearCode && i++ <= LZ_MAX_CODE)
        Code = Prefix[Code];
    return Code;
}
