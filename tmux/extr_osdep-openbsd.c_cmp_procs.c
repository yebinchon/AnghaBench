
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ p_estcpu; scalar_t__ p_slptime; int p_flag; scalar_t__ p_pid; int p_comm; } ;


 int P_SINTR ;
 scalar_t__ is_runnable (struct kinfo_proc*) ;
 scalar_t__ is_stopped (struct kinfo_proc*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static struct kinfo_proc *
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

 if (p1->p_estcpu > p2->p_estcpu)
  return (p1);
 if (p1->p_estcpu < p2->p_estcpu)
  return (p2);

 if (p1->p_slptime < p2->p_slptime)
  return (p1);
 if (p1->p_slptime > p2->p_slptime)
  return (p2);

 if ((p1->p_flag & P_SINTR) && !(p2->p_flag & P_SINTR))
  return (p1);
 if (!(p1->p_flag & P_SINTR) && (p2->p_flag & P_SINTR))
  return (p2);

 if (strcmp(p1->p_comm, p2->p_comm) < 0)
  return (p1);
 if (strcmp(p1->p_comm, p2->p_comm) > 0)
  return (p2);

 if (p1->p_pid > p2->p_pid)
  return (p1);
 return (p2);
}
