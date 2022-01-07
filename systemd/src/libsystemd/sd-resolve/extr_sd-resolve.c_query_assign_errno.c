
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ret; int _h_errno; int _errno; } ;
typedef TYPE_1__ sd_resolve_query ;


 int abs (int) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void query_assign_errno(sd_resolve_query *q, int ret, int error, int h_error) {
        assert(q);

        q->ret = ret;
        q->_errno = abs(error);
        q->_h_errno = h_error;
}
