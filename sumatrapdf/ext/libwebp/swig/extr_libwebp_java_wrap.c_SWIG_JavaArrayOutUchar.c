
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsize ;
typedef int * jshortArray ;
typedef scalar_t__ jshort ;
struct TYPE_6__ {int (* ReleaseShortArrayElements ) (TYPE_1__**,int *,scalar_t__*,int ) ;scalar_t__* (* GetShortArrayElements ) (TYPE_1__**,int *,int ) ;int * (* NewShortArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * stub1 (TYPE_1__**,int) ;
 scalar_t__* stub2 (TYPE_1__**,int *,int ) ;
 int stub3 (TYPE_1__**,int *,scalar_t__*,int ) ;

jshortArray SWIG_JavaArrayOutUchar (JNIEnv *jenv, unsigned char *result, jsize sz) {
  jshort *arr;
  int i;
  jshortArray jresult = (*jenv)->NewShortArray(jenv, sz);
  if (!jresult)
    return ((void*)0);
  arr = (*jenv)->GetShortArrayElements(jenv, jresult, 0);
  if (!arr)
    return ((void*)0);
  for (i=0; i<sz; i++)
    arr[i] = (jshort)result[i];
  (*jenv)->ReleaseShortArrayElements(jenv, jresult, arr, 0);
  return jresult;
}
