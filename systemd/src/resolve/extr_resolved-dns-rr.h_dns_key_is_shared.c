
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ DnsResourceKey ;


 int DNS_TYPE_PTR ;
 int IN_SET (int ,int ) ;

__attribute__((used)) static inline bool dns_key_is_shared(const DnsResourceKey *key) {
        return IN_SET(key->type, DNS_TYPE_PTR);
}
