
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int svm_port; } ;
struct TYPE_7__ {int sin6_port; } ;
struct TYPE_6__ {int sin_port; } ;
struct TYPE_5__ {int sa_family; } ;
union sockaddr_union {TYPE_4__ vm; TYPE_3__ in6; TYPE_2__ in; TYPE_1__ sa; } ;
struct sockaddr {int dummy; } ;





 int EAFNOSUPPORT ;
 int assert (union sockaddr_union*) ;
 unsigned int be16toh (int ) ;

int sockaddr_port(const struct sockaddr *_sa, unsigned *ret_port) {
        union sockaddr_union *sa = (union sockaddr_union*) _sa;



        assert(sa);

        switch (sa->sa.sa_family) {

        case 130:
                *ret_port = be16toh(sa->in.sin_port);
                return 0;

        case 129:
                *ret_port = be16toh(sa->in6.sin6_port);
                return 0;

        case 128:
                *ret_port = sa->vm.svm_port;
                return 0;

        default:
                return -EAFNOSUPPORT;
        }
}
