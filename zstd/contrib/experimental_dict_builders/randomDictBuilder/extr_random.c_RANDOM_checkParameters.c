
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t k; } ;
typedef TYPE_1__ ZDICT_random_params_t ;



__attribute__((used)) static int RANDOM_checkParameters(ZDICT_random_params_t parameters,
                                  size_t maxDictSize) {

    if (parameters.k == 0) {
      return 0;
    }

    if (parameters.k > maxDictSize) {
      return 0;
    }
    return 1;
}
