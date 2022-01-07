
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_location; } ;
typedef TYPE_1__ sd_journal ;


 int assert (TYPE_1__*) ;
 int detach_location (TYPE_1__*) ;
 int zero (int ) ;

__attribute__((used)) static void reset_location(sd_journal *j) {
        assert(j);

        detach_location(j);
        zero(j->current_location);
}
