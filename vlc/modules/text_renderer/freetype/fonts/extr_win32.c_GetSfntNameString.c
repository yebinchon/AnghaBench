
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ platform_id; scalar_t__ encoding_id; scalar_t__ name_id; scalar_t__ language_id; int string_len; int * string; } ;
typedef scalar_t__ FT_UShort ;
typedef int FT_UInt ;
typedef TYPE_1__ FT_SfntName ;
typedef int FT_Byte ;


 scalar_t__ GetSfntNameEntry (int *,int *,int *,TYPE_1__*) ;
 int U16_AT (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int GetSfntNameString( FT_Byte *p_table, FT_UInt i_size, FT_UShort i_platform_id,
                              FT_UShort i_encoding_id, FT_UShort i_name_id, FT_UShort i_language_id,
                              FT_Byte **pp_name, FT_UInt *i_name_length )
{
    uint16_t i_name_count = U16_AT( p_table + 2 );
    uint16_t i_storage_offset = U16_AT( p_table + 4 );
    FT_Byte *p_storage = p_table + i_storage_offset;
    FT_Byte *p_names = p_table + 6;

    const int i_entry_size = 12;

    for(int i = 0; i < i_name_count; ++i)
    {
        FT_SfntName sfnt_name;

        if( GetSfntNameEntry( p_names + i * i_entry_size, p_storage, p_table + i_size, &sfnt_name ) )
            return VLC_EGENERIC;

        if( sfnt_name.platform_id == i_platform_id && sfnt_name.encoding_id == i_encoding_id
         && sfnt_name.name_id == i_name_id && sfnt_name.language_id == i_language_id )
        {
            *i_name_length = sfnt_name.string_len;
            *pp_name = sfnt_name.string;

            return VLC_SUCCESS;
        }
    }

    return VLC_EGENERIC;
}
