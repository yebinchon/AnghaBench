
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int FD_ZERO (int *) ;
 int False ;
 int _rdpdr_check_fds (int *,int *,int *,int ) ;

void
rdpdr_check_fds(RDPCLIENT * This, fd_set * rfds, fd_set * wfds, BOOL timed_out)
{
 fd_set dummy;


 FD_ZERO(&dummy);






 _rdpdr_check_fds(This, &dummy, &dummy, False);
 _rdpdr_check_fds(This, rfds, wfds, timed_out);
}
