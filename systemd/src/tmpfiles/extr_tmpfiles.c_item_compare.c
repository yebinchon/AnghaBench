
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ Item ;


 int CMP (int ,int ) ;
 scalar_t__ takes_ownership (int ) ;

__attribute__((used)) static int item_compare(const Item *a, const Item *b) {



        if (takes_ownership(a->type) && !takes_ownership(b->type))
                return -1;
        if (!takes_ownership(a->type) && takes_ownership(b->type))
                return 1;

        return CMP(a->type, b->type);
}
