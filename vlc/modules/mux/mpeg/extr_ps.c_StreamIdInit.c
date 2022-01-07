
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void StreamIdInit( bool *id, int i_range )
{
    int i;

    for( i = 0; i < i_range; i++ )
    {
        id[i] = 1;
    }
}
