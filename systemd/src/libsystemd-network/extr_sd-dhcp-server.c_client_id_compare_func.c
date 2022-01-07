
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ data; } ;
typedef TYPE_1__ DHCPClientId ;


 int CMP (int ,int ) ;
 int assert (int) ;
 int memcmp (scalar_t__,scalar_t__,int ) ;

int client_id_compare_func(const DHCPClientId *a, const DHCPClientId *b) {
        int r;

        assert(!a->length || a->data);
        assert(!b->length || b->data);

        r = CMP(a->length, b->length);
        if (r != 0)
                return r;

        return memcmp(a->data, b->data, a->length);
}
