
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_unit_t ;
typedef char WCHAR ;
typedef int LPCWSTR ;


 int RU_CHAR ;
 int RU_SENTENCE ;
 int RU_TEXTEDIT ;
 int RU_UNKNOWN ;
 int RU_WORD ;
 int strcmpiW (int ,char const*) ;

__attribute__((used)) static range_unit_t string_to_unit(LPCWSTR str)
{
    static const WCHAR characterW[] =
        {'c','h','a','r','a','c','t','e','r',0};
    static const WCHAR wordW[] =
        {'w','o','r','d',0};
    static const WCHAR sentenceW[] =
        {'s','e','n','t','e','n','c','e',0};
    static const WCHAR texteditW[] =
        {'t','e','x','t','e','d','i','t',0};

    if(!strcmpiW(str, characterW)) return RU_CHAR;
    if(!strcmpiW(str, wordW)) return RU_WORD;
    if(!strcmpiW(str, sentenceW)) return RU_SENTENCE;
    if(!strcmpiW(str, texteditW)) return RU_TEXTEDIT;

    return RU_UNKNOWN;
}
