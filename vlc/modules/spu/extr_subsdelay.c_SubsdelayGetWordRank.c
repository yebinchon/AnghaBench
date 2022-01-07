
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int SubsdelayGetWordRank( int i_length )
{



    static const int p_rank[20] = { 300, 300, 300, 330, 363, 399, 438, 481, 529, 581,
                                    639, 702, 772, 849, 933, 1026, 1128, 1240, 1364, 1500 };

    if( i_length < 1 )
    {
        return 0;
    }

    if( i_length > 20 )
    {
        i_length = 20;
    }

    return p_rank[i_length - 1];
}
