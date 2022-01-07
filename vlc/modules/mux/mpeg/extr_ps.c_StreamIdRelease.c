
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void StreamIdRelease( bool *id, int i_id_min, int i_id )
{
    id[i_id - i_id_min] = 1;
}
