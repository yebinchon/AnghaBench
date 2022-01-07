
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bs_t ;


 int bs_align (int *) ;
 int bs_eof (int *) ;
 int bs_read (int *,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static void dvbsub_pdata8bpp( bs_t *s, uint8_t *p, int i_width, int *pi_off )
{
    bool b_stop = 0;

    while( !b_stop && !bs_eof( s ) )
    {
        int i_count = 0, i_color = 0;

        i_color = bs_read( s, 8 );
        if( i_color != 0x00 )
        {

            i_count = 1;
        }
        else
        {
            if( bs_read( s, 1 ) == 0x00 )
            {
                i_count = bs_read( s, 7 );
                if( i_count == 0x00 )
                    b_stop = 1;
            }
            else
            {
                i_count = bs_read( s, 7 );
                i_color = bs_read( s, 8 );
            }
        }

        if( !i_count ) continue;


        if( ( i_count + *pi_off ) > i_width ) break;

        if( i_count == 1 ) p[*pi_off] = i_color;
        else memset( ( p + *pi_off ), i_color, i_count );

        (*pi_off) += i_count;
    }

    bs_align( s );
}
