
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* get_extended_type(char c)
{
    const char* type_string;

    switch (c)
    {
    case 'D': type_string = "__int8"; break;
    case 'E': type_string = "unsigned __int8"; break;
    case 'F': type_string = "__int16"; break;
    case 'G': type_string = "unsigned __int16"; break;
    case 'H': type_string = "__int32"; break;
    case 'I': type_string = "unsigned __int32"; break;
    case 'J': type_string = "__int64"; break;
    case 'K': type_string = "unsigned __int64"; break;
    case 'L': type_string = "__int128"; break;
    case 'M': type_string = "unsigned __int128"; break;
    case 'N': type_string = "bool"; break;
    case 'W': type_string = "wchar_t"; break;
    default: type_string = ((void*)0); break;
    }
    return type_string;
}
