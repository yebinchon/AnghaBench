
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;



__attribute__((used)) static int combining_lexical_Thaana(WCHAR c)
{
    enum {Thaana_Norm=0, Thaana_FILI};

   switch(c)
    {
        case 0x7A6:
        case 0x7A7:
        case 0x7A8:
        case 0x7A9:
        case 0x7AA:
        case 0x7AB:
        case 0x7AC:
        case 0x7AD:
        case 0x7AE:
        case 0x7AF: return Thaana_FILI;
        default: return Thaana_Norm;
    }
}
