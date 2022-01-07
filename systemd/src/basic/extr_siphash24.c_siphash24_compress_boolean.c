
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;


 int siphash24_compress (int*,int,struct siphash*) ;

void siphash24_compress_boolean(bool in, struct siphash *state) {
        int i = in;

        siphash24_compress(&i, sizeof i, state);
}
