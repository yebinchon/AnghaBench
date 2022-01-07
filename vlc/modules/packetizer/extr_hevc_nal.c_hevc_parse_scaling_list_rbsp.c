
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bs_t ;


 unsigned int __MIN (int,int) ;
 scalar_t__ bs_read1 (int *) ;
 unsigned int bs_read_se (int *) ;
 int bs_read_ue (int *) ;
 int bs_remain (int *) ;

__attribute__((used)) static bool hevc_parse_scaling_list_rbsp( bs_t *p_bs )
{
    if( bs_remain( p_bs ) < 16 )
        return 0;

    for( int i=0; i<4; i++ )
    {
        for( int j=0; j<6; j += (i == 3) ? 3 : 1 )
        {
            if( bs_read1( p_bs ) == 0 )
                bs_read_ue( p_bs );
            else
            {
                unsigned nextCoef = 8;
                unsigned coefNum = __MIN( 64, (1 << (4 + (i << 1))));
                if( i > 1 )
                {
                    nextCoef = bs_read_se( p_bs ) + 8;
                }
                for( unsigned k=0; k<coefNum; k++ )
                {
                    nextCoef = ( nextCoef + bs_read_se( p_bs ) + 256 ) % 256;
                }
            }
        }
    }

    return 1;
}
