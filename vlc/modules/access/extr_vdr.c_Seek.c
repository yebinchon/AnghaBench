
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int fd; scalar_t__ offset; int size; } ;
typedef TYPE_2__ access_sys_t ;


 int FILE_COUNT ;
 scalar_t__ FILE_SIZE (unsigned int) ;
 int FindSeekpoint (TYPE_1__*) ;
 int SEEK_SET ;
 int SwitchFile (TYPE_1__*,unsigned int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ __MIN (scalar_t__,int ) ;
 int lseek (int ,scalar_t__,int ) ;

__attribute__((used)) static int Seek( stream_t *p_access, uint64_t i_pos )
{
    access_sys_t *p_sys = p_access->p_sys;


    i_pos = __MIN( i_pos, p_sys->size );

    p_sys->offset = i_pos;


    FindSeekpoint( p_access );


    unsigned i_file = 0;
    while( i_file < FILE_COUNT - 1 &&
           i_pos >= FILE_SIZE( i_file ) )
    {
        i_pos -= FILE_SIZE( i_file );
        i_file++;
    }
    if( !SwitchFile( p_access, i_file ) )
        return VLC_EGENERIC;


    return lseek( p_sys->fd, i_pos, SEEK_SET ) != -1 ?
        VLC_SUCCESS : VLC_EGENERIC;
}
