
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_NOCACHE ;
 int F_RDAHEAD ;
 int POSIX_FADV_NOREUSE ;
 int POSIX_FADV_WILLNEED ;
 int VLC_UNUSED (int) ;
 int fcntl (int,int ,int) ;
 int posix_fadvise (int,int ,int,int ) ;

__attribute__((used)) static void OptimizeForRead( int fd )
{

    VLC_UNUSED(fd);
}
