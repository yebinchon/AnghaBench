
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rrmlock_t ;
typedef scalar_t__ krw_t ;


 scalar_t__ RW_READER ;
 int rrm_enter_read (int *,void*) ;
 int rrm_enter_write (int *) ;

void
rrm_enter(rrmlock_t *rrl, krw_t rw, void *tag)
{
 if (rw == RW_READER)
  rrm_enter_read(rrl, tag);
 else
  rrm_enter_write(rrl);
}
