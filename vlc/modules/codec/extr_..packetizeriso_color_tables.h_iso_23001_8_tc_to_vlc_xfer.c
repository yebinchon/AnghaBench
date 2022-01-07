
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_transfer_func_t ;
typedef size_t uint8_t ;


 size_t ARRAY_SIZE (int *) ;
 int TRANSFER_FUNC_UNDEF ;
 int * iso_23001_8_tc_to_vlc_xfer_table ;

__attribute__((used)) static inline video_transfer_func_t iso_23001_8_tc_to_vlc_xfer( uint8_t v )
{
    return v < ARRAY_SIZE(iso_23001_8_tc_to_vlc_xfer_table)
           ? iso_23001_8_tc_to_vlc_xfer_table[v]
           : TRANSFER_FUNC_UNDEF;
}
