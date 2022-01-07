
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int i_sequence_number; } ;
typedef int MP4_Box_t ;


 TYPE_1__* BOXDATA (int const*) ;
 int * MP4_BoxGet (int *,char*) ;

__attribute__((used)) static uint32_t FragGetMoofSequenceNumber( MP4_Box_t *p_moof )
{
    const MP4_Box_t *p_mfhd = MP4_BoxGet( p_moof, "mfhd" );
    if( p_mfhd && BOXDATA(p_mfhd) )
        return BOXDATA(p_mfhd)->i_sequence_number;
    return 0;
}
