
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int U32 ;


 int RETURN_ERROR_IF (int,int ) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTD_checkDictNCount(short* normalizedCounter, unsigned dictMaxSymbolValue, unsigned maxSymbolValue) {
    U32 s;
    RETURN_ERROR_IF(dictMaxSymbolValue < maxSymbolValue, dictionary_corrupted);
    for (s = 0; s <= maxSymbolValue; ++s) {
        RETURN_ERROR_IF(normalizedCounter[s] == 0, dictionary_corrupted);
    }
    return 0;
}
