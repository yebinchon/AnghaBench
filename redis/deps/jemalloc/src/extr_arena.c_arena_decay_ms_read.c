
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int time_ms; } ;
typedef TYPE_1__ arena_decay_t ;


 int ATOMIC_RELAXED ;
 int atomic_load_zd (int *,int ) ;

__attribute__((used)) static ssize_t
arena_decay_ms_read(arena_decay_t *decay) {
 return atomic_load_zd(&decay->time_ms, ATOMIC_RELAXED);
}
