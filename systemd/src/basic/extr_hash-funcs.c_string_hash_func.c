
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;


 int siphash24_compress (char const*,scalar_t__,struct siphash*) ;
 scalar_t__ strlen (char const*) ;

void string_hash_func(const char *p, struct siphash *state) {
        siphash24_compress(p, strlen(p) + 1, state);
}
