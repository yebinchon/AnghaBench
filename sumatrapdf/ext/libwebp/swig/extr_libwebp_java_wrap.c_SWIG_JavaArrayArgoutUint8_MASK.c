#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int jsize ;
typedef  int /*<<< orphan*/  jbyteArray ;
typedef  scalar_t__ jbyte ;
struct TYPE_5__ {int (* GetArrayLength ) (TYPE_1__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ReleaseByteArrayElements ) (TYPE_1__**,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

void FUNC2 (JNIEnv *jenv, jbyte *jarr, uint8_t *carr, jbyteArray input) {
  int i;
  jsize sz = (*jenv)->GetArrayLength(jenv, input);
  for (i=0; i<sz; i++)
    jarr[i] = (jbyte)carr[i];
  (*jenv)->ReleaseByteArrayElements(jenv, input, jarr, 0);
}