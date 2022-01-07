
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int * string; scalar_t__ string_len; void* name_id; void* language_id; void* encoding_id; void* platform_id; } ;
typedef TYPE_1__ FT_SfntName ;
typedef int FT_Byte ;


 void* U16_AT (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int GetSfntNameEntry( FT_Byte *p_name_data, FT_Byte *p_storage_start,
                             FT_Byte *p_table_end, FT_SfntName *p_sfnt_name )
{
    uint16_t i_string_len = U16_AT( p_name_data + 8 );
    uint16_t i_string_offset = U16_AT( p_name_data + 10 );
    if( i_string_len == 0
     || p_storage_start + i_string_offset + i_string_len > p_table_end )
        return VLC_EGENERIC;

    p_sfnt_name->platform_id = U16_AT( p_name_data + 0 );
    p_sfnt_name->encoding_id = U16_AT( p_name_data + 2 );
    p_sfnt_name->language_id = U16_AT( p_name_data + 4 );
    p_sfnt_name->name_id = U16_AT( p_name_data + 6 );
    p_sfnt_name->string_len = i_string_len;
    p_sfnt_name->string = p_storage_start + i_string_offset;

    return VLC_SUCCESS;
}
