
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
typedef int NDiscDNSSL ;


 int NDISC_DNSSL_DOMAIN (int const*) ;
 int siphash24_compress (int ,int ,struct siphash*) ;
 int strlen (int ) ;

__attribute__((used)) static void ndisc_dnssl_hash_func(const NDiscDNSSL *x, struct siphash *state) {
        siphash24_compress(NDISC_DNSSL_DOMAIN(x), strlen(NDISC_DNSSL_DOMAIN(x)), state);
}
