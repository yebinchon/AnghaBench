
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ (* char_type_func ) (void*) ;
struct TYPE_6__ {scalar_t__ cursor; } ;
struct TYPE_5__ {scalar_t__ stringLength; char* string; scalar_t__ stringOffset; } ;
typedef TYPE_1__* TT_Name ;
typedef scalar_t__ FT_UInt ;
typedef char FT_String ;
typedef TYPE_2__* FT_Stream ;
typedef int FT_Memory ;
typedef int FT_Error ;
typedef void* FT_Char ;
typedef scalar_t__ FT_Bool ;


 scalar_t__ FT_ALLOC (char*,scalar_t__) ;
 int FT_Err_Ok ;
 scalar_t__ FT_FRAME_ENTER (scalar_t__) ;
 int FT_FRAME_EXIT () ;
 int FT_FREE (char*) ;
 scalar_t__ FT_STREAM_SEEK (scalar_t__) ;
 int FT_TRACE0 (char*) ;
 int FT_UNUSED (int ) ;

__attribute__((used)) static char*
  get_apple_string( FT_Memory memory,
                    FT_Stream stream,
                    TT_Name entry,
                    char_type_func char_type,
                    FT_Bool report_invalid_characters )
  {
    FT_Error error = FT_Err_Ok;

    char* result = ((void*)0);
    FT_String* r;
    FT_Char* p;
    FT_UInt len;

    FT_UNUSED( error );


    if ( FT_ALLOC( result, entry->stringLength + 1 ) )
      return ((void*)0);

    if ( FT_STREAM_SEEK( entry->stringOffset ) ||
         FT_FRAME_ENTER( entry->stringLength ) )
    {
      FT_FREE( result );
      entry->stringOffset = 0;
      entry->stringLength = 0;
      FT_FREE( entry->string );

      return ((void*)0);
    }

    r = (FT_String*)result;
    p = (FT_Char*)stream->cursor;

    for ( len = entry->stringLength; len > 0; len--, p++ )
    {
      if ( char_type( *p ) )
        *r++ = *p;
      else
      {
        if ( report_invalid_characters )
        {
          FT_TRACE0(( "get_apple_string:"
                      " Character `%c' (0x%X) invalid in PS name string\n",
                      *p, *p ));

          *r++ = *p;
        }
      }
    }
    *r = '\0';

    FT_FRAME_EXIT();

    return result;
  }
