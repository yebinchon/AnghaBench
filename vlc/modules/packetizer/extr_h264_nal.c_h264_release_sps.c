
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h264_sequence_parameter_set_t ;


 int free (int *) ;

void h264_release_sps( h264_sequence_parameter_set_t *p_sps )
{
    free( p_sps );
}
