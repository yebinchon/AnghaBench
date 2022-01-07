
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LWLock ;


 int ERROR ;
 int RENDEZVOUS_CHUNK_APPEND_LWLOCK ;
 int elog (int ,char*) ;
 scalar_t__ find_rendezvous_variable (int ) ;

__attribute__((used)) static LWLock *
chunk_append_get_lock_pointer()
{
 LWLock **lock = (LWLock **) find_rendezvous_variable(RENDEZVOUS_CHUNK_APPEND_LWLOCK);

 if (*lock == ((void*)0))
  elog(ERROR, "LWLock for coordinating parallel workers not initialized");

 return *lock;
}
