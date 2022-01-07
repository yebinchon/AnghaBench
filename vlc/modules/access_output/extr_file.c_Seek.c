
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
typedef int off_t ;


 int SEEK_SET ;
 int lseek (int,int ,int ) ;

__attribute__((used)) static int Seek( sout_access_out_t *p_access, off_t i_pos )
{
    int *fdp = p_access->p_sys, fd = *fdp;

    return lseek(fd, i_pos, SEEK_SET);
}
