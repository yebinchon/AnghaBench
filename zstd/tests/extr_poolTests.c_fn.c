
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {unsigned int* data; size_t i; int mutex; } ;


 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void fn(void *opaque)
{
  struct data *data = (struct data *)opaque;
  ZSTD_pthread_mutex_lock(&data->mutex);
  data->data[data->i] = (unsigned)(data->i);
  ++data->i;
  ZSTD_pthread_mutex_unlock(&data->mutex);
}
