#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {int* iov_base; int iov_len; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;
typedef  int /*<<< orphan*/  fd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct cmsghdr* FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 int FUNC4 (int) ; 
 scalar_t__ SCM_RIGHTS ; 
 scalar_t__ SOL_SOCKET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (int p)
{
    struct msghdr hdr;
    struct iovec iov;
    struct cmsghdr *cmsg;
    int val, fd;
    char buf[FUNC4 (sizeof (fd))];

    hdr.msg_name = NULL;
    hdr.msg_namelen = 0;
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
    hdr.msg_control = buf;
    hdr.msg_controllen = sizeof (buf);

    iov.iov_base = &val;
    iov.iov_len = sizeof (val);

    if (FUNC6 (p, &hdr, 0) != sizeof (val))
        return -1;

    for (cmsg = FUNC1 (&hdr); cmsg != NULL;
         cmsg = FUNC3 (&hdr, cmsg))
    {
        if ((cmsg->cmsg_level == SOL_SOCKET)
         && (cmsg->cmsg_type == SCM_RIGHTS)
         && (cmsg->cmsg_len >= FUNC2 (sizeof (fd))))
        {
            FUNC5 (&fd, FUNC0 (cmsg), sizeof (fd));
            return fd;
        }
    }

    errno = val;
    return -1;
}