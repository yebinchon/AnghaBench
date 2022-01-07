
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int SPA_MINBLOCKSHIFT ;
 int create_zbookmark_from_obj_off (int *,int ,int ) ;
 int zbookmark_compare (int,int ,int,int ,int *,int *) ;

__attribute__((used)) static int
redact_range_compare(uint64_t obj1, uint64_t off1, uint32_t dbss1,
    uint64_t obj2, uint64_t off2, uint32_t dbss2)
{
 zbookmark_phys_t z1, z2;
 create_zbookmark_from_obj_off(&z1, obj1, off1);
 create_zbookmark_from_obj_off(&z2, obj2, off2);

 return (zbookmark_compare(dbss1 >> SPA_MINBLOCKSHIFT, 0,
     dbss2 >> SPA_MINBLOCKSHIFT, 0, &z1, &z2));
}
