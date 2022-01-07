
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int glyph_count; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int DeviceTableOffset ;
 int FT_INVALID_GLYPH_ID ;
 int FT_NEXT_USHORT (int) ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int otv_Device_validate (int,TYPE_1__*) ;

__attribute__((used)) static void
  otv_GlyphAssembly_validate( FT_Bytes table,
                              OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt pcnt, table_size;
    FT_UInt i;

    OTV_OPTIONAL_TABLE( DeviceTableOffset );




    OTV_LIMIT_CHECK( 6 );

    p += 2;
    OTV_OPTIONAL_OFFSET( DeviceTableOffset );
    pcnt = FT_NEXT_USHORT( p );

    OTV_LIMIT_CHECK( 8 * pcnt );
    table_size = 6 + 8 * pcnt;

    OTV_SIZE_CHECK( DeviceTableOffset );
    if ( DeviceTableOffset )
      otv_Device_validate( table + DeviceTableOffset, otvalid );

    for ( i = 0; i < pcnt; i++ )
    {
      FT_UInt gid;


      gid = FT_NEXT_USHORT( p );
      if ( gid >= otvalid->glyph_count )
        FT_INVALID_GLYPH_ID;
      p += 2*4;
    }


  }
