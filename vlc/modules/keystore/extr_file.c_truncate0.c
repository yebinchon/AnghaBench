
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ _chsize (int,int ) ;
 scalar_t__ ftruncate (int,int ) ;

__attribute__((used)) static int
truncate0(int i_fd)
{

    return ftruncate(i_fd, 0) == 0 ? VLC_SUCCESS : VLC_EGENERIC;



}
