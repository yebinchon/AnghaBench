
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsize ;
typedef int * jintArray ;
typedef scalar_t__ jint ;
struct TYPE_6__ {int (* ReleaseIntArrayElements ) (TYPE_1__**,int *,scalar_t__*,int ) ;scalar_t__* (* GetIntArrayElements ) (TYPE_1__**,int *,int ) ;int * (* NewIntArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * stub1 (TYPE_1__**,int) ;
 scalar_t__* stub2 (TYPE_1__**,int *,int ) ;
 int stub3 (TYPE_1__**,int *,scalar_t__*,int ) ;

jintArray SWIG_JavaArrayOutUshort (JNIEnv *jenv, unsigned short *result, jsize sz) {
  jint *arr;
  int i;
  jintArray jresult = (*jenv)->NewIntArray(jenv, sz);
  if (!jresult)
    return ((void*)0);
  arr = (*jenv)->GetIntArrayElements(jenv, jresult, 0);
  if (!arr)
    return ((void*)0);
  for (i=0; i<sz; i++)
    arr[i] = (jint)result[i];
  (*jenv)->ReleaseIntArrayElements(jenv, jresult, arr, 0);
  return jresult;
}
