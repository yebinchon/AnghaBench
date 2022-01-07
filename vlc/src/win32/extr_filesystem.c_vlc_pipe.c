
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int O_BINARY ;
 int O_NOINHERIT ;
 int _pipe (int*,int,int) ;
 int _set_errno (int ) ;

int vlc_pipe (int fds[2])
{




    return _pipe (fds, 32768, O_NOINHERIT | O_BINARY);

}
