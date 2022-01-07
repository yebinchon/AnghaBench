
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hevc_picture_parameter_set_t ;


 int free (int *) ;

void hevc_rbsp_release_pps( hevc_picture_parameter_set_t *p_pps )
{
    free( p_pps );
}
