
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hevc_slice_segment_header_t ;


 int free (int *) ;

void hevc_rbsp_release_slice_header( hevc_slice_segment_header_t *p_sh )
{
    free( p_sh );
}
