
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc2 {scalar_t__ p_estcpu; scalar_t__ p_slptime; scalar_t__ p_pid; } ;


 scalar_t__ is_runnable (struct kinfo_proc2*) ;
 scalar_t__ is_stopped (struct kinfo_proc2*) ;

struct kinfo_proc2 *
cmp_procs(struct kinfo_proc2 *p1, struct kinfo_proc2 *p2)
{
 if (is_runnable(p1) && !is_runnable(p2))
  return (p1);
 if (!is_runnable(p1) && is_runnable(p2))
  return (p2);

 if (is_stopped(p1) && !is_stopped(p2))
  return (p1);
 if (!is_stopped(p1) && is_stopped(p2))
  return (p2);

 if (p1->p_estcpu > p2->p_estcpu)
  return (p1);
 if (p1->p_estcpu < p2->p_estcpu)
  return (p2);

 if (p1->p_slptime < p2->p_slptime)
  return (p1);
 if (p1->p_slptime > p2->p_slptime)
  return (p2);

 if (p1->p_pid > p2->p_pid)
  return (p1);
 return (p2);
}
