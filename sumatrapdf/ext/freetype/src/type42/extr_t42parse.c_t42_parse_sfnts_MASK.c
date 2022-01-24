#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* ttf_data; int ttf_size; } ;
struct TYPE_11__ {char* limit; char* cursor; scalar_t__ error; int /*<<< orphan*/  memory; } ;
struct TYPE_12__ {TYPE_1__ root; } ;
struct TYPE_13__ {TYPE_2__ parser; } ;
typedef  TYPE_2__* T42_Parser ;
typedef  TYPE_3__* T42_Loader ;
typedef  int T42_Load_Status ;
typedef  TYPE_4__* T42_Face ;
typedef  scalar_t__ FT_ULong ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  scalar_t__ FT_Long ;
typedef  int FT_Int ;
typedef  scalar_t__ FT_Error ;
typedef  char FT_Byte ;
typedef  int FT_Bool ;

/* Variables and functions */
#define  BEFORE_START 130 
#define  BEFORE_TABLE_DIR 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_File_Format ; 
#define  OTHER_TABLES 128 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (char) ; 

__attribute__((used)) static void
  FUNC10( T42_Face    face,
                   T42_Loader  loader )
  {
    T42_Parser  parser = &loader->parser;
    FT_Memory   memory = parser->root.memory;
    FT_Byte*    cur;
    FT_Byte*    limit  = parser->root.limit;
    FT_Error    error;
    FT_Int      num_tables = 0;
    FT_Long     count;

    FT_ULong    n, string_size, old_string_size, real_size;
    FT_Byte*    string_buf = NULL;
    FT_Bool     allocated  = 0;

    T42_Load_Status  status;


    /* The format is                                */
    /*                                              */
    /*   /sfnts [ <hexstring> <hexstring> ... ] def */
    /*                                              */
    /* or                                           */
    /*                                              */
    /*   /sfnts [                                   */
    /*      <num_bin_bytes> RD <binary data>        */
    /*      <num_bin_bytes> RD <binary data>        */
    /*      ...                                     */
    /*   ] def                                      */
    /*                                              */
    /* with exactly one space after the `RD' token. */

    FUNC6( parser );

    if ( parser->root.cursor >= limit || *parser->root.cursor++ != '[' )
    {
      FUNC0(( "t42_parse_sfnts: can't find begin of sfnts vector\n" ));
      error = FUNC4( Invalid_File_Format );
      goto Fail;
    }

    FUNC6( parser );
    status          = BEFORE_START;
    string_size     = 0;
    old_string_size = 0;
    count           = 0;

    while ( parser->root.cursor < limit )
    {
      FT_ULong  size;


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
          FUNC0(( "t42_parse_sfnts: "
                     "can't handle mixed binary and hex strings\n" ));
          error = FUNC4( Invalid_File_Format );
          goto Fail;
        }

        FUNC5( parser );
        if ( parser->root.error )
          goto Exit;

        /* don't include delimiters */
        string_size = (FT_ULong)( ( parser->root.cursor - cur - 2 + 1 ) / 2 );
        if ( !string_size )
        {
          FUNC0(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
          error = FUNC4( Invalid_File_Format );
          goto Fail;
        }
        if ( FUNC3( string_buf, old_string_size, string_size ) )
          goto Fail;

        allocated = 1;

        parser->root.cursor = cur;
        (void)FUNC7( parser, string_buf, string_size, &real_size, 1 );
        old_string_size = string_size;
        string_size     = real_size;
      }

      else if ( FUNC9( *cur ) )
      {
        FT_Long  tmp;


        if ( allocated )
        {
          FUNC0(( "t42_parse_sfnts: "
                     "can't handle mixed binary and hex strings\n" ));
          error = FUNC4( Invalid_File_Format );
          goto Fail;
        }

        tmp = FUNC8( parser );
        if ( tmp < 0 )
        {
          FUNC0(( "t42_parse_sfnts: invalid string size\n" ));
          error = FUNC4( Invalid_File_Format );
          goto Fail;
        }
        else
          string_size = (FT_ULong)tmp;

        FUNC5( parser );             /* `RD' */
        if ( parser->root.error )
          return;

        string_buf = parser->root.cursor + 1;   /* one space after `RD' */

        if ( (FT_ULong)( limit - parser->root.cursor ) <= string_size )
        {
          FUNC0(( "t42_parse_sfnts: too much binary data\n" ));
          error = FUNC4( Invalid_File_Format );
          goto Fail;
        }
        else
          parser->root.cursor += string_size + 1;
      }

      if ( !string_buf )
      {
        FUNC0(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
        error = FUNC4( Invalid_File_Format );
        goto Fail;
      }

      /* A string can have a trailing zero (odd) byte for padding. */
      /* Ignore it.                                                */
      if ( ( string_size & 1 ) && string_buf[string_size - 1] == 0 )
        string_size--;

      if ( !string_size )
      {
        FUNC0(( "t42_parse_sfnts: invalid string\n" ));
        error = FUNC4( Invalid_File_Format );
        goto Fail;
      }

      /* The whole TTF is now loaded into `string_buf'.  We are */
      /* checking its contents while copying it to `ttf_data'.  */

      size = (FT_ULong)( limit - parser->root.cursor );

      for ( n = 0; n < string_size; n++ )
      {
        switch ( status )
        {
        case BEFORE_START:
          /* load offset table, 12 bytes */
          if ( count < 12 )
          {
            face->ttf_data[count++] = string_buf[n];
            continue;
          }
          else
          {
            num_tables     = 16 * face->ttf_data[4] + face->ttf_data[5];
            status         = BEFORE_TABLE_DIR;
            face->ttf_size = 12 + 16 * num_tables;

            if ( (FT_Long)size < face->ttf_size )
            {
              FUNC0(( "t42_parse_sfnts: invalid data in sfnts array\n" ));
              error = FUNC4( Invalid_File_Format );
              goto Fail;
            }

            if ( FUNC3( face->ttf_data, 12, face->ttf_size ) )
              goto Fail;
          }
          /* fall through */

        case BEFORE_TABLE_DIR:
          /* the offset table is read; read the table directory */
          if ( count < face->ttf_size )
          {
            face->ttf_data[count++] = string_buf[n];
            continue;
          }
          else
          {
            int       i;
            FT_ULong  len;


            for ( i = 0; i < num_tables; i++ )
            {
              FT_Byte*  p = face->ttf_data + 12 + 16 * i + 12;


              len = FUNC2( p );
              if ( len > size                               ||
                   face->ttf_size > (FT_Long)( size - len ) )
              {
                FUNC0(( "t42_parse_sfnts:"
                           " invalid data in sfnts array\n" ));
                error = FUNC4( Invalid_File_Format );
                goto Fail;
              }

              /* Pad to a 4-byte boundary length */
              face->ttf_size += (FT_Long)( ( len + 3 ) & ~3U );
            }

            status = OTHER_TABLES;

            if ( FUNC3( face->ttf_data, 12 + 16 * num_tables,
                             face->ttf_size + 1 ) )
              goto Fail;
          }
          /* fall through */

        case OTHER_TABLES:
          /* all other tables are just copied */
          if ( count >= face->ttf_size )
          {
            FUNC0(( "t42_parse_sfnts: too much binary data\n" ));
            error = FUNC4( Invalid_File_Format );
            goto Fail;
          }
          face->ttf_data[count++] = string_buf[n];
        }
      }

      FUNC6( parser );
    }

    /* if control reaches this point, the format was not valid */
    error = FUNC4( Invalid_File_Format );

  Fail:
    parser->root.error = error;

  Exit:
    if ( allocated )
      FUNC1( string_buf );
  }