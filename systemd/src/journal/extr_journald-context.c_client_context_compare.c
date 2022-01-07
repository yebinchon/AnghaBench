
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; int timestamp; } ;
typedef TYPE_1__ ClientContext ;


 int CMP (int ,int ) ;

__attribute__((used)) static int client_context_compare(const void *a, const void *b) {
        const ClientContext *x = a, *y = b;
        int r;

        r = CMP(x->timestamp, y->timestamp);
        if (r != 0)
                return r;

        return CMP(x->pid, y->pid);
}
