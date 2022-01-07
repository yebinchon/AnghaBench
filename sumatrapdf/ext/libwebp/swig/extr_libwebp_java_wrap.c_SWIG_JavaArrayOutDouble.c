
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsize ;
typedef int * jdoubleArray ;
typedef scalar_t__ jdouble ;
struct TYPE_6__ {int (* ReleaseDoubleArrayElements ) (TYPE_1__**,int *,scalar_t__*,int ) ;scalar_t__* (* GetDoubleArrayElements ) (TYPE_1__**,int *,int ) ;int * (* NewDoubleArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * stub1 (TYPE_1__**,int) ;
 scalar_t__* stub2 (TYPE_1__**,int *,int ) ;
 int stub3 (TYPE_1__**,int *,scalar_t__*,int ) ;

jdoubleArray SWIG_JavaArrayOutDouble (JNIEnv *jenv, double *result, jsize sz) {
  jdouble *arr;
  int i;
  jdoubleArray jresult = (*jenv)->NewDoubleArray(jenv, sz);
  if (!jresult)
    return ((void*)0);
  arr = (*jenv)->GetDoubleArrayElements(jenv, jresult, 0);
  if (!arr)
    return ((void*)0);
  for (i=0; i<sz; i++)
    arr[i] = (jdouble)result[i];
  (*jenv)->ReleaseDoubleArrayElements(jenv, jresult, arr, 0);
  return jresult;
}
