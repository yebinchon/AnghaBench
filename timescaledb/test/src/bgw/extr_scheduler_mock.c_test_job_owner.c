
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int BgwJob ;


 int GetUserId () ;

__attribute__((used)) static Oid
test_job_owner(BgwJob *job)
{
 return GetUserId();
}
