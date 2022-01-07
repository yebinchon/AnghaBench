
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int const dict; scalar_t__ ident; } ;
struct TYPE_11__ {char* cursor; char* limit; void* error; } ;
struct TYPE_12__ {TYPE_1__ root; } ;
struct TYPE_13__ {int keywords_encountered; TYPE_2__ parser; } ;
typedef TYPE_2__* T1_Parser ;
typedef TYPE_3__* T1_Loader ;
typedef TYPE_4__* T1_Field ;
typedef int T1_Face ;
typedef int FT_ULong ;
typedef int FT_UInt ;
typedef void* FT_Error ;
typedef char FT_Byte ;
typedef int FT_Bool ;


 scalar_t__ FT_ERR_EQ (void*,int ) ;
 void* FT_Err_Ok ;
 void* FT_THROW (int ) ;
 int FT_TRACE1 (char*) ;
 int IS_INCREMENTAL ;
 scalar_t__ IS_PS_TOKEN (char*,char*,char*) ;
 int Ignore ;
 int Invalid_File_Format ;
 int T1_FIELD_DICT_FONTDICT ;
 int T1_FIELD_DICT_PRIVATE ;
 int T1_FONTDIR_AFTER_PRIVATE ;
 int T1_PRIVATE ;
 int T1_Skip_PS_Token (TYPE_2__*) ;
 int T1_Skip_Spaces (TYPE_2__*) ;
 scalar_t__ ft_isdigit (char) ;
 scalar_t__ ft_memcmp (char*,char*,int) ;
 scalar_t__ ft_strcmp (char const*,char*) ;
 int ft_strlen (char const*) ;
 int read_binary_data (TYPE_2__*,int*,char**,int ) ;
 int t1_keywords ;
 void* t1_load_keyword (int ,TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static FT_Error
  parse_dict( T1_Face face,
              T1_Loader loader,
              FT_Byte* base,
              FT_ULong size )
  {
    T1_Parser parser = &loader->parser;
    FT_Byte *limit, *start_binary = ((void*)0);
    FT_Bool have_integer = 0;


    parser->root.cursor = base;
    parser->root.limit = base + size;
    parser->root.error = FT_Err_Ok;

    limit = parser->root.limit;

    T1_Skip_Spaces( parser );

    while ( parser->root.cursor < limit )
    {
      FT_Byte* cur;


      cur = parser->root.cursor;


      if ( IS_PS_TOKEN( cur, limit, "eexec" ) )
        break;


      else if ( IS_PS_TOKEN( cur, limit, "closefile" ) )
        break;



      else if ( IS_PS_TOKEN( cur, limit, "FontDirectory" ) )
      {
        if ( loader->keywords_encountered & T1_PRIVATE )
          loader->keywords_encountered |=
            T1_FONTDIR_AFTER_PRIVATE;
        parser->root.cursor += 13;
      }


      else if ( ft_isdigit( *cur ) )
      {
        start_binary = cur;
        T1_Skip_PS_Token( parser );
        if ( parser->root.error )
          goto Exit;
        have_integer = 1;
      }




      else if ( *cur == 'R' && cur + 6 < limit && *(cur + 1) == 'D' &&
                have_integer )
      {
        FT_ULong s;
        FT_Byte* b;


        parser->root.cursor = start_binary;
        if ( !read_binary_data( parser, &s, &b, IS_INCREMENTAL ) )
          return FT_THROW( Invalid_File_Format );
        have_integer = 0;
      }

      else if ( *cur == '-' && cur + 6 < limit && *(cur + 1) == '|' &&
                have_integer )
      {
        FT_ULong s;
        FT_Byte* b;


        parser->root.cursor = start_binary;
        if ( !read_binary_data( parser, &s, &b, IS_INCREMENTAL ) )
          return FT_THROW( Invalid_File_Format );
        have_integer = 0;
      }


      else if ( *cur == '/' && cur + 2 < limit )
      {
        FT_UInt len;


        cur++;

        parser->root.cursor = cur;
        T1_Skip_PS_Token( parser );
        if ( parser->root.error )
          goto Exit;

        len = (FT_UInt)( parser->root.cursor - cur );

        if ( len > 0 && len < 22 && parser->root.cursor < limit )
        {

          T1_Field keyword = (T1_Field)t1_keywords;


          for (;;)
          {
            FT_Byte* name;


            name = (FT_Byte*)keyword->ident;
            if ( !name )
              break;

            if ( cur[0] == name[0] &&
                 len == ft_strlen( (const char *)name ) &&
                 ft_memcmp( cur, name, len ) == 0 )
            {
              const FT_UInt dict =
                ( loader->keywords_encountered & T1_PRIVATE )
                    ? T1_FIELD_DICT_PRIVATE
                    : T1_FIELD_DICT_FONTDICT;

              if ( !( dict & keyword->dict ) )
              {
                FT_TRACE1(( "parse_dict: found `%s' but ignoring it"
                            " since it is in the wrong dictionary\n",
                            keyword->ident ));
                break;
              }

              if ( !( loader->keywords_encountered &
                      T1_FONTDIR_AFTER_PRIVATE ) ||
                   ft_strcmp( (const char*)name, "CharStrings" ) == 0 )
              {
                parser->root.error = t1_load_keyword( face,
                                                      loader,
                                                      keyword );
                if ( parser->root.error )
                {
                  if ( FT_ERR_EQ( parser->root.error, Ignore ) )
                    parser->root.error = FT_Err_Ok;
                  else
                    return parser->root.error;
                }
              }
              break;
            }

            keyword++;
          }
        }

        have_integer = 0;
      }
      else
      {
        T1_Skip_PS_Token( parser );
        if ( parser->root.error )
          goto Exit;
        have_integer = 0;
      }

      T1_Skip_Spaces( parser );
    }

  Exit:
    return parser->root.error;
  }
