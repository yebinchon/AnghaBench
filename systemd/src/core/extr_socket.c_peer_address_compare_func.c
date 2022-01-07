
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int svm_cid; } ;
struct TYPE_11__ {int sin6_addr; } ;
struct TYPE_10__ {int sin_addr; } ;
struct TYPE_9__ {int sa_family; } ;
struct TYPE_13__ {TYPE_4__ vm; TYPE_3__ in6; TYPE_2__ in; TYPE_1__ sa; } ;
struct TYPE_14__ {TYPE_5__ peer; } ;
typedef TYPE_6__ SocketPeer ;





 int CMP (int,int) ;
 int assert_not_reached (char*) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int peer_address_compare_func(const SocketPeer *x, const SocketPeer *y) {
        int r;

        r = CMP(x->peer.sa.sa_family, y->peer.sa.sa_family);
        if (r != 0)
                return r;

        switch(x->peer.sa.sa_family) {
        case 130:
                return memcmp(&x->peer.in.sin_addr, &y->peer.in.sin_addr, sizeof(x->peer.in.sin_addr));
        case 129:
                return memcmp(&x->peer.in6.sin6_addr, &y->peer.in6.sin6_addr, sizeof(x->peer.in6.sin6_addr));
        case 128:
                return CMP(x->peer.vm.svm_cid, y->peer.vm.svm_cid);
        }
        assert_not_reached("Black sheep in the family!");
}
