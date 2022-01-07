
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef scalar_t__ JobLockLifetime ;


 scalar_t__ LOCKACQUIRE_NOT_AVAIL ;
 scalar_t__ LockAcquire (int *,int ,int,int) ;
 int MyDatabaseId ;
 scalar_t__ SESSION_LOCK ;
 int TS_SET_LOCKTAG_ADVISORY (int ,int ,int ,int ) ;

__attribute__((used)) static bool
lock_job(int32 job_id, LOCKMODE mode, JobLockLifetime lock_type, LOCKTAG *tag, bool block)
{

 TS_SET_LOCKTAG_ADVISORY(*tag, MyDatabaseId, job_id, 0);

 return LockAcquire(tag, mode, lock_type == SESSION_LOCK, !block) != LOCKACQUIRE_NOT_AVAIL;
}
