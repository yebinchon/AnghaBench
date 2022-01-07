
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int new_id ;
struct TYPE_3__ {int dns_transactions; } ;
typedef TYPE_1__ Manager ;


 int TRANSACTIONS_MAX ;
 int UINT_TO_PTR (scalar_t__) ;
 int assert_cc (int) ;
 scalar_t__ hashmap_get (int ,int ) ;
 int random_bytes (scalar_t__*,int) ;

__attribute__((used)) static uint16_t pick_new_id(Manager *m) {
        uint16_t new_id;




        assert_cc(TRANSACTIONS_MAX < 0xFFFF);

        do
                random_bytes(&new_id, sizeof(new_id));
        while (new_id == 0 ||
               hashmap_get(m->dns_transactions, UINT_TO_PTR(new_id)));

        return new_id;
}
