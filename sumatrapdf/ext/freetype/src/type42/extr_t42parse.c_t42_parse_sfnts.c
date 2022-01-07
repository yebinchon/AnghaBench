
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {char* ttf_data; int ttf_size; } ;
struct TYPE_11__ {char* limit; char* cursor; scalar_t__ error; int memory; } ;
struct TYPE_12__ {TYPE_1__ root; } ;
struct TYPE_13__ {TYPE_2__ parser; } ;
typedef TYPE_2__* T42_Parser ;
typedef TYPE_3__* T42_Loader ;
typedef int T42_Load_Status ;
typedef TYPE_4__* T42_Face ;
typedef scalar_t__ FT_ULong ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Long ;
typedef int FT_Int ;
typedef scalar_t__ FT_Error ;
typedef char FT_Byte ;
typedef int FT_Bool ;




 int FT_ERROR (char*) ;
 int FT_FREE (char*) ;
 scalar_t__ FT_PEEK_ULONG (char*) ;
 scalar_t__ FT_REALLOC (char*,int,scalar_t__) ;
 scalar_t__ FT_THROW (int ) ;
 int Invalid_File_Format ;

 int T1_Skip_PS_Token (TYPE_2__*) ;
 int T1_Skip_Spaces (TYPE_2__*) ;
 int T1_ToBytes (TYPE_2__*,char*,scalar_t__,scalar_t__*,int) ;
 scalar_t__ T1_ToInt (TYPE_2__*) ;
 scalar_t__ ft_isdigit (char) ;

__attribute__((used)) static void
  t42_parse_sfnts( T42_Face face,
                   T42_Loader loader )
  {
    T42_Parser parser = &loader->parser;
    FT_Memory memory = parser->root.memory;
    FT_Byte* cur;
    FT_Byte* limit = parser->root.limit;
    FT_Error error;
    FT_Int num_tables = 0;
    FT_Long count;

    FT_ULong n, string_size, old_string_size, real_size;
    FT_Byte* string_buf = ((void*)0);
    FT_Bool allocated = 0;

    T42_Load_Status status;
    T1_Skip_Spaces( parser );

    if ( parser->root.cursor >= limit || *parser->root.cursor++ != '[' )
    {
      FT_ERROR(( "t42_parse_sfnts: can't find begin of sfnts vector\n" ));
      error = FT_THROW( Invalid_File_Format );
      goto Fail;
    }

    T1_Skip_Spaces( parser );
    status = 130;
    string_size = 0;
    old_string_size = 0;
    count = 0;

    while ( parser->root.cursor < limit )
    {
      FT_ULong size;


      cur = parser->root.cursor;

      if ( *cur == ']' )
      {
        parser->root.cursor++;
        goto Exit;
      }

      else if ( *cur == '<' )
      {
        if ( string_buf && !allocated )
        {
          FT_ERROR(( "t42_parse_sfnts: "
                     "can't handle mixed binary and hex strings\n" ));
          error = FT_THROW( Invalid_File_Format );
          goto Fail;
        }

        T1_Skip_PS_Token( parser );
        if ( parser->root.error )
          goto Exit;


        string_size = (FT_ULong)( ( parser->root.cursor - cur - 2 + 1 ) / 2 );
        if ( !string_size )
        {
          FT_ERROR(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
          error = FT_THROW( Invalid_File_Format );
          goto Fail;
        }
        if ( FT_REALLOC( string_buf, old_string_size, string_size ) )
          goto Fail;

        allocated = 1;

        parser->root.cursor = cur;
        (void)T1_ToBytes( parser, string_buf, string_size, &real_size, 1 );
        old_string_size = string_size;
        string_size = real_size;
      }

      else if ( ft_isdigit( *cur ) )
      {
        FT_Long tmp;


        if ( allocated )
        {
          FT_ERROR(( "t42_parse_sfnts: "
                     "can't handle mixed binary and hex strings\n" ));
          error = FT_THROW( Invalid_File_Format );
          goto Fail;
        }

        tmp = T1_ToInt( parser );
        if ( tmp < 0 )
        {
          FT_ERROR(( "t42_parse_sfnts: invalid string size\n" ));
          error = FT_THROW( Invalid_File_Format );
          goto Fail;
        }
        else
          string_size = (FT_ULong)tmp;

        T1_Skip_PS_Token( parser );
        if ( parser->root.error )
          return;

        string_buf = parser->root.cursor + 1;

        if ( (FT_ULong)( limit - parser->root.cursor ) <= string_size )
        {
          FT_ERROR(( "t42_parse_sfnts: too much binary data\n" ));
          error = FT_THROW( Invalid_File_Format );
          goto Fail;
        }
        else
          parser->root.cursor += string_size + 1;
      }

      if ( !string_buf )
      {
        FT_ERROR(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
        error = FT_THROW( Invalid_File_Format );
        goto Fail;
      }



      if ( ( string_size & 1 ) && string_buf[string_size - 1] == 0 )
        string_size--;

      if ( !string_size )
      {
        FT_ERROR(( "t42_parse_sfnts: invalid string\n" ));
        error = FT_THROW( Invalid_File_Format );
        goto Fail;
      }




      size = (FT_ULong)( limit - parser->root.cursor );

      for ( n = 0; n < string_size; n++ )
      {
        switch ( status )
        {
        case 130:

          if ( count < 12 )
          {
            face->ttf_data[count++] = string_buf[n];
            continue;
          }
          else
          {
            num_tables = 16 * face->ttf_data[4] + face->ttf_data[5];
            status = 129;
            face->ttf_size = 12 + 16 * num_tables;

            if ( (FT_Long)size < face->ttf_size )
            {
              FT_ERROR(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
              error = FT_THROW( Invalid_File_Format );
              goto Fail;
            }

            if ( FT_REALLOC( face->ttf_data, 12, face->ttf_size ) )
              goto Fail;
          }


        case 129:

          if ( count < face->ttf_size )
          {
            face->ttf_data[count++] = string_buf[n];
            continue;
          }
          else
          {
            int i;
            FT_ULong len;


            for ( i = 0; i < num_tables; i++ )
            {
              FT_Byte* p = face->ttf_data + 12 + 16 * i + 12;


              len = FT_PEEK_ULONG( p );
              if ( len > size ||
                   face->ttf_size > (FT_Long)( size - len ) )
              {
                FT_ERROR(( "t42_parse_sfnts:"
                           " invalid data in sfnts array\n" ));
                error = FT_THROW( Invalid_File_Format );
                goto Fail;
              }


              face->ttf_size += (FT_Long)( ( len + 3 ) & ~3U );
            }

            status = 128;

            if ( FT_REALLOC( face->ttf_data, 12 + 16 * num_tables,
                             face->ttf_size + 1 ) )
              goto Fail;
          }


        case 128:

          if ( count >= face->ttf_size )
          {
            FT_ERROR(( "t42_parse_sfnts: too much binary data\n" ));
            error = FT_THROW( Invalid_File_Format );
            goto Fail;
          }
          face->ttf_data[count++] = string_buf[n];
        }
      }

      T1_Skip_Spaces( parser );
    }


    error = FT_THROW( Invalid_File_Format );

  Fail:
    parser->root.error = error;

  Exit:
    if ( allocated )
      FT_FREE( string_buf );
  }
