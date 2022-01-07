
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ lseek (int,int ,int ) ;

__attribute__((used)) static int Seek( stream_t *p_access, uint64_t i_pos )
{
    int *fdp = p_access->p_sys, fd = *fdp;

    if (lseek( fd, i_pos, SEEK_SET ) == (off_t)-1)
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
