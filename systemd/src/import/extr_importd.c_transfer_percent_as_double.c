
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int progress_percent; } ;
typedef TYPE_1__ Transfer ;


 double DBL_MAX ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static double transfer_percent_as_double(Transfer *t) {
        assert(t);

        if (t->progress_percent == (unsigned) -1)
                return -DBL_MAX;

        return (double) t->progress_percent / 100.0;
}
