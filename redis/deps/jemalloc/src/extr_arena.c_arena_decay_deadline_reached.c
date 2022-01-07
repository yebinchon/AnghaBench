
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nstime_t ;
struct TYPE_3__ {int deadline; } ;
typedef TYPE_1__ arena_decay_t ;


 scalar_t__ nstime_compare (int *,int const*) ;

__attribute__((used)) static bool
arena_decay_deadline_reached(const arena_decay_t *decay, const nstime_t *time) {
 return (nstime_compare(&decay->deadline, time) <= 0);
}
