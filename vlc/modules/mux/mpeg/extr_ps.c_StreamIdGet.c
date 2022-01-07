
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int StreamIdGet( bool *id, int i_id_min, int i_id_max )
{
    int i;

    for( i = 0; i <= i_id_max - i_id_min; i++ )
    {
        if( id[i] )
        {
            id[i] = 0;

            return i_id_min + i;
        }
    }
    return -1;
}
