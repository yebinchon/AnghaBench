
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_buffer; size_t i_payload; int * p_buffer; int * p_payload; int i_type; } ;
typedef TYPE_1__ mp4_box_iterator_t ;


 size_t GetDWBE (int const*) ;
 int VLC_FOURCC (int const,int const,int const,int const) ;

__attribute__((used)) static bool mp4_box_iterator_Next( mp4_box_iterator_t *p_it )
{
    while( p_it->i_buffer > 8 )
    {
        const uint8_t *p = p_it->p_buffer;
        const size_t i_size = GetDWBE( p );
        p_it->i_type = VLC_FOURCC(p[4], p[5], p[6], p[7]);
        if( i_size >= 8 && i_size <= p_it->i_buffer )
        {
            p_it->p_payload = &p_it->p_buffer[8];
            p_it->i_payload = i_size - 8;

            p_it->p_buffer += i_size;
            p_it->i_buffer -= i_size;
            return 1;
        }
        else break;
    }
    return 0;
}
