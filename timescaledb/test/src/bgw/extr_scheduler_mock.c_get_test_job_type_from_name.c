
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestJobType ;
typedef int Name ;


 int _MAX_TEST_JOB_TYPE ;
 scalar_t__ namestrcmp (int ,int ) ;
 int * test_job_type_names ;

__attribute__((used)) static TestJobType
get_test_job_type_from_name(Name job_type_name)
{
 int i;

 for (i = 0; i < _MAX_TEST_JOB_TYPE; i++)
 {
  if (namestrcmp(job_type_name, test_job_type_names[i]) == 0)
   return i;
 }
 return _MAX_TEST_JOB_TYPE;
}
