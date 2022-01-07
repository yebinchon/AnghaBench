
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef int POINT ;
typedef int INT ;
typedef TYPE_1__ GPOS_ValueRecord ;


 int GPOS_get_value_record (int ,int const*,TYPE_1__*) ;
 int GPOS_get_value_record_offsets (void const*,TYPE_1__*,int ,int,int *,int *) ;
 int TRACE (char*,int ) ;
 int wine_dbgstr_point (int *) ;

__attribute__((used)) static void apply_pair_value( const void *pos_table, WORD val_fmt1, WORD val_fmt2, const WORD *pair,
                              INT ppem, POINT *adjust, POINT *advance )
{
    GPOS_ValueRecord val_rec1 = {0,0,0,0,0,0,0,0};
    GPOS_ValueRecord val_rec2 = {0,0,0,0,0,0,0,0};
    INT size;

    size = GPOS_get_value_record( val_fmt1, pair, &val_rec1 );
    GPOS_get_value_record( val_fmt2, pair + size, &val_rec2 );

    if (val_fmt1)
    {
        GPOS_get_value_record_offsets( pos_table, &val_rec1, val_fmt1, ppem, adjust, advance );
        TRACE( "Glyph 1 resulting cumulative offset is %s design units\n", wine_dbgstr_point(&adjust[0]) );
        TRACE( "Glyph 1 resulting cumulative advance is %s design units\n", wine_dbgstr_point(&advance[0]) );
    }
    if (val_fmt2)
    {
        GPOS_get_value_record_offsets( pos_table, &val_rec2, val_fmt2, ppem, adjust + 1, advance + 1 );
        TRACE( "Glyph 2 resulting cumulative offset is %s design units\n", wine_dbgstr_point(&adjust[1]) );
        TRACE( "Glyph 2 resulting cumulative advance is %s design units\n", wine_dbgstr_point(&advance[1]) );
    }
}
