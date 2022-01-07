
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsize ;
typedef int * jlongArray ;
typedef scalar_t__ jlong ;
struct TYPE_6__ {int (* ReleaseLongArrayElements ) (TYPE_1__**,int *,scalar_t__*,int ) ;scalar_t__* (* GetLongArrayElements ) (TYPE_1__**,int *,int ) ;int * (* NewLongArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * stub1 (TYPE_1__**,int) ;
 scalar_t__* stub2 (TYPE_1__**,int *,int ) ;
 int stub3 (TYPE_1__**,int *,scalar_t__*,int ) ;

jlongArray SWIG_JavaArrayOutUlong (JNIEnv *jenv, unsigned long *result, jsize sz) {
  jlong *arr;
  int i;
  jlongArray jresult = (*jenv)->NewLongArray(jenv, sz);
  if (!jresult)
    return ((void*)0);
  arr = (*jenv)->GetLongArrayElements(jenv, jresult, 0);
  if (!arr)
    return ((void*)0);
  for (i=0; i<sz; i++)
    arr[i] = (jlong)result[i];
  (*jenv)->ReleaseLongArrayElements(jenv, jresult, arr, 0);
  return jresult;
}
