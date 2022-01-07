
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct msghdr {int msg_controllen; int ipi6_addr; int ** msg_control; struct in_addr ipi_spec_dst; int msg_iovlen; int msg_iov; scalar_t__ msg_namelen; int msg_name; } ;
struct in_pktinfo {int msg_controllen; int ipi6_addr; int ** msg_control; struct in_addr ipi_spec_dst; int msg_iovlen; int msg_iov; scalar_t__ msg_namelen; int msg_name; } ;
struct in6_pktinfo {int msg_controllen; int ipi6_addr; int ** msg_control; struct in_addr ipi_spec_dst; int msg_iovlen; int msg_iov; scalar_t__ msg_namelen; int msg_name; } ;
struct cmsghdr {void* cmsg_len; int cmsg_type; void* cmsg_level; } ;
typedef int ssize_t ;
struct TYPE_12__ {int size; int count; int iovs; } ;
typedef TYPE_4__ ngx_iovec_t ;
typedef int ngx_err_t ;
struct TYPE_13__ {TYPE_3__* write; int log; int fd; TYPE_2__* local_sockaddr; TYPE_1__* listening; scalar_t__ socklen; int sockaddr; } ;
typedef TYPE_5__ ngx_connection_t ;
typedef int msg_control6 ;
typedef int msg_control ;
struct TYPE_11__ {int error; } ;
struct TYPE_10__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {scalar_t__ wildcard; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 void* CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 void* IPPROTO_IP ;
 void* IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int IP_PKTINFO ;
 int IP_SENDSRCADDR ;
 int NGX_AGAIN ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_connection_error (TYPE_5__*,int,char*) ;
 int ngx_errno ;
 int ngx_log_debug0 (int ,int ,int,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int ) ;
 int ngx_memzero (struct msghdr*,int) ;
 int sendmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static ssize_t
ngx_sendmsg(ngx_connection_t *c, ngx_iovec_t *vec)
{
    ssize_t n;
    ngx_err_t err;
    struct msghdr msg;
    ngx_memzero(&msg, sizeof(struct msghdr));

    if (c->socklen) {
        msg.msg_name = c->sockaddr;
        msg.msg_namelen = c->socklen;
    }

    msg.msg_iov = vec->iovs;
    msg.msg_iovlen = vec->count;
eintr:

    n = sendmsg(c->fd, &msg, 0);

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "sendmsg: %z of %uz", n, vec->size);

    if (n == -1) {
        err = ngx_errno;

        switch (err) {
        case 129:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "sendmsg() not ready");
            return NGX_AGAIN;

        case 128:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "sendmsg() was interrupted");
            goto eintr;

        default:
            c->write->error = 1;
            ngx_connection_error(c, err, "sendmsg() failed");
            return NGX_ERROR;
        }
    }

    return n;
}
