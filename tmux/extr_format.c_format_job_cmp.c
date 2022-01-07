
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_job {scalar_t__ tag; int cmd; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
format_job_cmp(struct format_job *fj1, struct format_job *fj2)
{
 if (fj1->tag < fj2->tag)
  return (-1);
 if (fj1->tag > fj2->tag)
  return (1);
 return (strcmp(fj1->cmd, fj2->cmd));
}
