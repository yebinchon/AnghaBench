
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int av1_OBU_frame_header_t ;


 int free (int *) ;

void AV1_release_frame_header(av1_OBU_frame_header_t *p_fh)
{
    free(p_fh);
}
