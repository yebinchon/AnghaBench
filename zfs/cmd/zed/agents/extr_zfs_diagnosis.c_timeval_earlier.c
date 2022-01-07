
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ertv_sec; scalar_t__ ertv_nsec; } ;
typedef TYPE_1__ er_timeval_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
timeval_earlier(er_timeval_t *a, er_timeval_t *b)
{
 return (a->ertv_sec < b->ertv_sec ||
     (a->ertv_sec == b->ertv_sec && a->ertv_nsec < b->ertv_nsec));
}
