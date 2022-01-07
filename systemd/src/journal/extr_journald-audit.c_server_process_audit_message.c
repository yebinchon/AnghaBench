
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nl_family; scalar_t__ nl_pid; } ;
union sockaddr_union {TYPE_1__ nl; } ;
struct ucred {scalar_t__ pid; } ;
struct sockaddr_nl {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; scalar_t__ nlmsg_len; } ;
typedef int socklen_t ;
typedef void const Server ;


 scalar_t__ AF_NETLINK ;
 size_t ALIGN (int) ;
 scalar_t__ AUDIT_FIRST_USER_MSG ;
 scalar_t__ AUDIT_USER ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int NLMSG_DATA (struct nlmsghdr const*) ;
 int NLMSG_ERROR ;
 int NLMSG_NOOP ;
 int NLMSG_OK (struct nlmsghdr const*,size_t) ;
 int assert (void const*) ;
 int log_debug (char*) ;
 int log_error (char*) ;
 int process_audit_string (void const*,scalar_t__,int ,scalar_t__) ;

void server_process_audit_message(
                Server *s,
                const void *buffer,
                size_t buffer_size,
                const struct ucred *ucred,
                const union sockaddr_union *sa,
                socklen_t salen) {

        const struct nlmsghdr *nl = buffer;

        assert(s);

        if (buffer_size < ALIGN(sizeof(struct nlmsghdr)))
                return;

        assert(buffer);


        if (!sa ||
            salen != sizeof(struct sockaddr_nl) ||
            sa->nl.nl_family != AF_NETLINK ||
            sa->nl.nl_pid != 0) {
                log_debug("Audit netlink message from invalid sender.");
                return;
        }

        if (!ucred || ucred->pid != 0) {
                log_debug("Audit netlink message with invalid credentials.");
                return;
        }

        if (!NLMSG_OK(nl, buffer_size)) {
                log_error("Audit netlink message truncated.");
                return;
        }


        if (IN_SET(nl->nlmsg_type, NLMSG_NOOP, NLMSG_ERROR))
                return;


        if (nl->nlmsg_type < AUDIT_FIRST_USER_MSG && nl->nlmsg_type != AUDIT_USER)
                return;

        process_audit_string(s, nl->nlmsg_type, NLMSG_DATA(nl), nl->nlmsg_len - ALIGN(sizeof(struct nlmsghdr)));
}
