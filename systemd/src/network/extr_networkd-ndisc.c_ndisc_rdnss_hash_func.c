
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_3__ {int address; } ;
typedef TYPE_1__ NDiscRDNSS ;


 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void ndisc_rdnss_hash_func(const NDiscRDNSS *x, struct siphash *state) {
        siphash24_compress(&x->address, sizeof(x->address), state);
}
