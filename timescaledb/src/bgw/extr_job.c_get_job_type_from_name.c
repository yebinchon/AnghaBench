
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Name ;
typedef int JobType ;


 int JOB_TYPE_UNKNOWN ;
 int _MAX_JOB_TYPE ;
 int * job_type_names ;
 scalar_t__ namestrcmp (int ,int ) ;

__attribute__((used)) static JobType
get_job_type_from_name(Name job_type_name)
{
 int i;

 for (i = 0; i < _MAX_JOB_TYPE; i++)
  if (namestrcmp(job_type_name, job_type_names[i]) == 0)
   return i;
 return JOB_TYPE_UNKNOWN;
}
