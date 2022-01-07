
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;
typedef int FILE ;


 int libvlc_log_file ;
 int libvlc_log_set (int *,int ,int *) ;

void libvlc_log_set_file (libvlc_instance_t *inst, FILE *stream)
{
    libvlc_log_set (inst, libvlc_log_file, stream);
}
