
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_AOF_FSYNC ;
 int bioCreateBackgroundJob (int ,void*,int *,int *) ;

void aof_background_fsync(int fd) {
    bioCreateBackgroundJob(BIO_AOF_FSYNC,(void*)(long)fd,((void*)0),((void*)0));
}
