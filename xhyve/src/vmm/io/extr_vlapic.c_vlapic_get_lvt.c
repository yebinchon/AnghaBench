
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int * lvt_last; } ;


 int atomic_load_acq_32 (int *) ;
 int lvt_off_to_idx (int ) ;

__attribute__((used)) static __inline uint32_t
vlapic_get_lvt(struct vlapic *vlapic, uint32_t offset)
{
 int idx;
 uint32_t val;

 idx = lvt_off_to_idx(offset);
 val = atomic_load_acq_32(&vlapic->lvt_last[idx]);
 return (val);
}
