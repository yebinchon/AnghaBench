
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* globals; } ;
struct TYPE_4__ {int face; } ;
typedef scalar_t__ FT_ULong ;
typedef int FT_Face ;
typedef TYPE_2__* AF_StyleMetrics ;


 scalar_t__ FT_Get_Char_Index (int ,scalar_t__) ;
 int GET_UTF8_CHAR (scalar_t__,char const*) ;

const char*
  af_shaper_get_cluster( const char* p,
                         AF_StyleMetrics metrics,
                         void* buf_,
                         unsigned int* count )
  {
    FT_Face face = metrics->globals->face;
    FT_ULong ch, dummy = 0;
    FT_ULong* buf = (FT_ULong*)buf_;


    while ( *p == ' ' )
      p++;

    GET_UTF8_CHAR( ch, p );



    while ( !( *p == ' ' || *p == '\0' ) )
      GET_UTF8_CHAR( dummy, p );

    if ( dummy )
    {
      *buf = 0;
      *count = 0;
    }
    else
    {
      *buf = FT_Get_Char_Index( face, ch );
      *count = 1;
    }

    return p;
  }
