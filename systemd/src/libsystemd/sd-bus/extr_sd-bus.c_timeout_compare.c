
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_callback {scalar_t__ timeout_usec; } ;


 int CMP (scalar_t__,scalar_t__) ;

__attribute__((used)) static int timeout_compare(const void *a, const void *b) {
        const struct reply_callback *x = a, *y = b;

        if (x->timeout_usec != 0 && y->timeout_usec == 0)
                return -1;

        if (x->timeout_usec == 0 && y->timeout_usec != 0)
                return 1;

        return CMP(x->timeout_usec, y->timeout_usec);
}
