
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ kp_pid; int kp_comm; } ;


 scalar_t__ is_runnable (struct kinfo_proc*) ;
 scalar_t__ is_stopped (struct kinfo_proc*) ;
 scalar_t__ strcmp (int ,int ) ;

struct kinfo_proc *
cmp_procs(struct kinfo_proc *p1, struct kinfo_proc *p2)
{
 if (is_runnable(p1) && !is_runnable(p2))
  return (p1);
 if (!is_runnable(p1) && is_runnable(p2))
  return (p2);

 if (is_stopped(p1) && !is_stopped(p2))
  return (p1);
 if (!is_stopped(p1) && is_stopped(p2))
  return (p2);

 if (strcmp(p1->kp_comm, p2->kp_comm) < 0)
  return (p1);
 if (strcmp(p1->kp_comm, p2->kp_comm) > 0)
  return (p2);

 if (p1->kp_pid > p2->kp_pid)
  return (p1);
 return (p2);
}
