
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsize ;
typedef int jfloatArray ;
typedef scalar_t__ jfloat ;
struct TYPE_6__ {int (* GetArrayLength ) (TYPE_1__**,int ) ;scalar_t__* (* GetFloatArrayElements ) (TYPE_1__**,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 int SWIG_JavaNullPointerException ;
 int SWIG_JavaOutOfMemoryError ;
 int SWIG_JavaThrowException (TYPE_1__**,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int stub1 (TYPE_1__**,int ) ;
 scalar_t__* stub2 (TYPE_1__**,int ,int ) ;

int SWIG_JavaArrayInFloat (JNIEnv *jenv, jfloat **jarr, float **carr, jfloatArray input) {
  int i;
  jsize sz;
  if (!input) {
    SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
    return 0;
  }
  sz = (*jenv)->GetArrayLength(jenv, input);
  *jarr = (*jenv)->GetFloatArrayElements(jenv, input, 0);
  if (!*jarr)
    return 0;
  *carr = (float*) calloc(sz, sizeof(float));
  if (!*carr) {
    SWIG_JavaThrowException(jenv, SWIG_JavaOutOfMemoryError, "array memory allocation failed");
    return 0;
  }
  for (i=0; i<sz; i++)
    (*carr)[i] = (float)(*jarr)[i];
  return 1;
}
