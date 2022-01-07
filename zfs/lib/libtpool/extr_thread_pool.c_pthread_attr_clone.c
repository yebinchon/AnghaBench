
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int dummy; } ;
typedef int pthread_attr_t ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int pthread_attr_destroy (int *) ;
 int pthread_attr_getaffinity_np (int const*,size_t,int *) ;
 int pthread_attr_getdetachstate (int const*,int*) ;
 int pthread_attr_getguardsize (int const*,size_t*) ;
 int pthread_attr_getinheritsched (int const*,int*) ;
 int pthread_attr_getschedparam (int const*,struct sched_param*) ;
 int pthread_attr_getschedpolicy (int const*,int*) ;
 int pthread_attr_getscope (int const*,int*) ;
 int pthread_attr_getstack (int const*,void**,size_t*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,size_t,int *) ;
 int pthread_attr_setdetachstate (int *,int) ;
 int pthread_attr_setguardsize (int *,size_t) ;
 int pthread_attr_setinheritsched (int *,int) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_attr_setschedpolicy (int *,int) ;
 int pthread_attr_setscope (int *,int) ;
 int pthread_attr_setstack (int *,void*,size_t) ;

__attribute__((used)) static int
pthread_attr_clone(pthread_attr_t *attr, const pthread_attr_t *old_attr)
{
 int error;

 error = pthread_attr_init(attr);
 if (error || (old_attr == ((void*)0)))
  return (error);
 int detachstate;
 error = pthread_attr_getdetachstate(old_attr, &detachstate);
 if (error == 0)
  error = pthread_attr_setdetachstate(attr, detachstate);
 if (error)
  goto error;

 size_t guardsize;
 error = pthread_attr_getguardsize(old_attr, &guardsize);
 if (error == 0)
  error = pthread_attr_setguardsize(attr, guardsize);
 if (error)
  goto error;

 int inheritsched;
 error = pthread_attr_getinheritsched(old_attr, &inheritsched);
 if (error == 0)
  error = pthread_attr_setinheritsched(attr, inheritsched);
 if (error)
  goto error;

 struct sched_param param;
 error = pthread_attr_getschedparam(old_attr, &param);
 if (error == 0)
  error = pthread_attr_setschedparam(attr, &param);
 if (error)
  goto error;

 int policy;
 error = pthread_attr_getschedpolicy(old_attr, &policy);
 if (error == 0)
  error = pthread_attr_setschedpolicy(attr, policy);
 if (error)
  goto error;

 int scope;
 error = pthread_attr_getscope(old_attr, &scope);
 if (error == 0)
  error = pthread_attr_setscope(attr, scope);
 if (error)
  goto error;

 void *stackaddr;
 size_t stacksize;
 error = pthread_attr_getstack(old_attr, &stackaddr, &stacksize);
 if (error == 0)
  error = pthread_attr_setstack(attr, stackaddr, stacksize);
 if (error)
  goto error;

 return (0);
error:
 pthread_attr_destroy(attr);
 return (error);
}
