
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t tid_t ;
struct TYPE_2__ {int lib; } ;


 TYPE_1__* tid_ids ;

__attribute__((used)) static inline unsigned get_libid_from_tid(tid_t tid)
{
    return tid_ids[tid].lib;
}
