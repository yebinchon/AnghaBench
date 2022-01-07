
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zb_object; int zb_blkid; } ;
typedef TYPE_1__ zbookmark_phys_t ;
struct TYPE_7__ {scalar_t__ rbp_object; int rbp_blkid; } ;
typedef TYPE_2__ redact_block_phys_t ;


 int redact_block_get_count (TYPE_2__*) ;

__attribute__((used)) static int
redact_block_zb_compare(redact_block_phys_t *first,
    zbookmark_phys_t *second)
{





 if (first->rbp_object < second->zb_object ||
     (first->rbp_object == second->zb_object &&
     first->rbp_blkid + (redact_block_get_count(first) - 1) <
     second->zb_blkid)) {
  return (-1);
 }






 if (first->rbp_object > second->zb_object ||
     (first->rbp_object == second->zb_object &&
     first->rbp_blkid > second->zb_blkid)) {
  return (1);
 }

 return (0);
}
