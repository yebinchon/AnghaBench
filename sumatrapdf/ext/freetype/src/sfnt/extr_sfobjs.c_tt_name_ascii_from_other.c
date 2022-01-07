
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stringLength; scalar_t__ string; } ;
typedef TYPE_1__* TT_Name ;
typedef int FT_UInt ;
typedef char FT_String ;
typedef int FT_Memory ;
typedef int FT_Error ;
typedef int FT_Byte ;


 scalar_t__ FT_NEW_ARRAY (char*,int) ;

__attribute__((used)) static FT_String*
  tt_name_ascii_from_other( TT_Name entry,
                            FT_Memory memory )
  {
    FT_String* string = ((void*)0);
    FT_UInt len, code, n;
    FT_Byte* read = (FT_Byte*)entry->string;
    FT_Error error;


    len = (FT_UInt)entry->stringLength;

    if ( FT_NEW_ARRAY( string, len + 1 ) )
      return ((void*)0);

    for ( n = 0; n < len; n++ )
    {
      code = *read++;

      if ( code == 0 )
        break;

      if ( code < 32 || code > 127 )
        code = '?';

      string[n] = (char)code;
    }

    string[n] = 0;

    return string;
  }
