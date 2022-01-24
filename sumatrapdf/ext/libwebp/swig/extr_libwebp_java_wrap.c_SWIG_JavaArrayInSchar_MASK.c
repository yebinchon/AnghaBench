#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int jsize ;
typedef  int /*<<< orphan*/  jbyteArray ;
typedef  scalar_t__ jbyte ;
struct TYPE_6__ {int (* GetArrayLength ) (TYPE_1__**,int /*<<< orphan*/ ) ;scalar_t__* (* GetByteArrayElements ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  SWIG_JavaNullPointerException ; 
 int /*<<< orphan*/  SWIG_JavaOutOfMemoryError ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4 (JNIEnv *jenv, jbyte **jarr, signed char **carr, jbyteArray input) {
  int i;
  jsize sz;
  if (!input) {
    FUNC0(jenv, SWIG_JavaNullPointerException, "null array");
    return 0;
  }
  sz = (*jenv)->GetArrayLength(jenv, input);
  *jarr = (*jenv)->GetByteArrayElements(jenv, input, 0);
  if (!*jarr)
    return 0;
  *carr = (signed char*) FUNC1(sz, sizeof(signed char));
  if (!*carr) {
    FUNC0(jenv, SWIG_JavaOutOfMemoryError, "array memory allocation failed");
    return 0;
  }
  for (i=0; i<sz; i++)
    (*carr)[i] = (signed char)(*jarr)[i];
  return 1;
}