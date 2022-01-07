
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int lock; int serial; } ;
typedef TYPE_1__ strm_kvs ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static uint64_t
kvs_serial(strm_kvs* kvs)
{
  uint64_t serial;

  pthread_mutex_lock(&kvs->lock);
  serial = kvs->serial;
  pthread_mutex_unlock(&kvs->lock);
  return serial;
}
