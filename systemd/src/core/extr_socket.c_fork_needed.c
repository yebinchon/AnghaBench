
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sa_family; } ;
struct TYPE_9__ {TYPE_1__ sa; } ;
struct TYPE_10__ {scalar_t__ network_namespace_path; scalar_t__ private_network; TYPE_2__ sockaddr; } ;
typedef TYPE_3__ SocketAddress ;
typedef TYPE_3__ ExecContext ;


 int AF_INET ;
 int AF_INET6 ;
 int BPF_FIREWALL_UNSUPPORTED ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int assert (TYPE_3__ const*) ;
 int bpf_firewall_supported () ;

__attribute__((used)) static int fork_needed(const SocketAddress *address, const ExecContext *context) {
        int r;

        assert(address);
        assert(context);



        if (IN_SET(address->sockaddr.sa.sa_family, AF_INET, AF_INET6)) {
                r = bpf_firewall_supported();
                if (r < 0)
                        return r;
                if (r != BPF_FIREWALL_UNSUPPORTED)
                        return 1;
        }

        return context->private_network || context->network_namespace_path;
}
