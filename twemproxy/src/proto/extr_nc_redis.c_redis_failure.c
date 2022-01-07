
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int type; int request; } ;


 int ASSERT (int) ;




bool
redis_failure(struct msg *r)
{
    ASSERT(!r->request);

    switch (r->type) {
    case 128:
    case 130:
    case 129:
        return 1;

    default:
        break;
    }

    return 0;
}
