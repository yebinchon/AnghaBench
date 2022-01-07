
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {struct bufferevent* event; } ;
struct bufferevent {int dummy; } ;



struct bufferevent *
job_get_event(struct job *job)
{
 return (job->event);
}
