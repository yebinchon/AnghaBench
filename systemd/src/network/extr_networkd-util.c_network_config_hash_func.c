
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_3__ {int line; int * filename; } ;
typedef TYPE_1__ NetworkConfigSection ;


 int siphash24_compress (int *,int,struct siphash*) ;
 int strlen (int *) ;

__attribute__((used)) static void network_config_hash_func(const NetworkConfigSection *c, struct siphash *state) {
        siphash24_compress(c->filename, strlen(c->filename), state);
        siphash24_compress(&c->line, sizeof(c->line), state);
}
