
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ extra3; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_ULong ;
typedef int FT_UInt ;
typedef scalar_t__ FT_PtrDist ;
typedef int FT_Int ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (scalar_t__) ;
 int OTV_OPTIONAL_TABLE (scalar_t__) ;
 int OTV_SIZE_CHECK (scalar_t__) ;
 int OTV_TRACE (char*) ;
 scalar_t__ device ;
 int otv_Device_validate (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
  otv_ValueRecord_validate( FT_Bytes table,
                            FT_UInt format,
                            OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt count;
    if ( format >= 0x100 )
      FT_INVALID_FORMAT;

    for ( count = 4; count > 0; count-- )
    {
      if ( format & 1 )
      {

        OTV_LIMIT_CHECK( 2 );
        p += 2;
      }

      format >>= 1;
    }

    for ( count = 4; count > 0; count-- )
    {
      if ( format & 1 )
      {
        FT_PtrDist table_size;

        OTV_OPTIONAL_TABLE( device );



        OTV_LIMIT_CHECK( 2 );
        OTV_OPTIONAL_OFFSET( device );

        table_size = p - otvalid->extra3;

        OTV_SIZE_CHECK( device );
        if ( device )
          otv_Device_validate( otvalid->extra3 + device, otvalid );
      }
      format >>= 1;
    }

    OTV_EXIT;
  }
