
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {int* iov_base; int iov_len; } ;
struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;
typedef int fd ;
typedef int buf ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 int MSG_NOSIGNAL ;
 int SCM_RIGHTS ;
 int SOL_SOCKET ;
 int memcpy (int ,int*,int) ;
 int sendmsg (int,struct msghdr*,int ) ;

__attribute__((used)) static int send_fd (int p, int fd)
{
    struct msghdr hdr;
    struct iovec iov;
    struct cmsghdr *cmsg;
    char buf[CMSG_SPACE (sizeof (fd))];
    int val = 0;

    hdr.msg_name = ((void*)0);
    hdr.msg_namelen = 0;
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
    hdr.msg_control = buf;
    hdr.msg_controllen = sizeof (buf);

    iov.iov_base = &val;
    iov.iov_len = sizeof (val);

    cmsg = CMSG_FIRSTHDR (&hdr);
    cmsg->cmsg_level = SOL_SOCKET;
    cmsg->cmsg_type = SCM_RIGHTS;
    cmsg->cmsg_len = CMSG_LEN (sizeof (fd));
    memcpy (CMSG_DATA (cmsg), &fd, sizeof (fd));
    hdr.msg_controllen = cmsg->cmsg_len;

    return sendmsg(p, &hdr, MSG_NOSIGNAL) == sizeof (val) ? 0 : -1;
}
