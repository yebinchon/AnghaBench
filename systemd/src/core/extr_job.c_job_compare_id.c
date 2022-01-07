
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ Job ;


 int CMP (int ,int ) ;

__attribute__((used)) static int job_compare_id(Job * const *a, Job * const *b) {
        return CMP((*a)->id, (*b)->id);
}
