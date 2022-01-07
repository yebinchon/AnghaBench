
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ first; scalar_t__ count; } ;
typedef scalar_t__ FT_UInt32 ;
typedef scalar_t__ FT_UInt ;
typedef TYPE_1__* FNT_CMap ;



__attribute__((used)) static FT_UInt
  fnt_cmap_char_index( FNT_CMap cmap,
                       FT_UInt32 char_code )
  {
    FT_UInt gindex = 0;


    char_code -= cmap->first;
    if ( char_code < cmap->count )


      gindex = (FT_UInt)( char_code + 1 );
    return gindex;
  }
