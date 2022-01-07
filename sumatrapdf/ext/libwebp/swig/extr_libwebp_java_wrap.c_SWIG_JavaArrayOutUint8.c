
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int jsize ;
typedef int * jbyteArray ;
typedef scalar_t__ jbyte ;
struct TYPE_6__ {int (* ReleaseByteArrayElements ) (TYPE_1__**,int *,scalar_t__*,int ) ;scalar_t__* (* GetByteArrayElements ) (TYPE_1__**,int *,int ) ;int * (* NewByteArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * stub1 (TYPE_1__**,int) ;
 scalar_t__* stub2 (TYPE_1__**,int *,int ) ;
 int stub3 (TYPE_1__**,int *,scalar_t__*,int ) ;

jbyteArray SWIG_JavaArrayOutUint8 (JNIEnv *jenv, uint8_t *result, jsize sz) {
  jbyte *arr;
  int i;
  jbyteArray jresult = (*jenv)->NewByteArray(jenv, sz);
  if (!jresult)
    return ((void*)0);
  arr = (*jenv)->GetByteArrayElements(jenv, jresult, 0);
  if (!arr)
    return ((void*)0);
  for (i=0; i<sz; i++)
    arr[i] = (jbyte)result[i];
  (*jenv)->ReleaseByteArrayElements(jenv, jresult, arr, 0);
  return jresult;
}
