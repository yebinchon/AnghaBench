
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafJob ;


 int g_free (int *) ;

void
seaf_job_free (SeafJob *job)
{
    g_free (job);
}
