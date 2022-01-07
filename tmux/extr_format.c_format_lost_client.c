
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int * jobs; } ;


 int format_job_tidy (int *,int) ;
 int free (int *) ;

void
format_lost_client(struct client *c)
{
 if (c->jobs != ((void*)0))
  format_job_tidy(c->jobs, 1);
 free(c->jobs);
}
