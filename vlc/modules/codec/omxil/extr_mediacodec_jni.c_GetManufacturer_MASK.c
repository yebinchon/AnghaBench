#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jstring ;
typedef  int /*<<< orphan*/  jfieldID ;
typedef  int /*<<< orphan*/  jclass ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_1__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  (* GetStaticObjectField ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetStaticFieldID ) (TYPE_1__**,int /*<<< orphan*/ ,char*,char*) ;int /*<<< orphan*/  (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC8(JNIEnv *env)
{
    char *manufacturer = NULL;

    jclass clazz = (*env)->FindClass(env, "android/os/Build");
    if (FUNC0())
        return NULL;

    jfieldID id = (*env)->GetStaticFieldID(env, clazz, "MANUFACTURER",
                                           "Ljava/lang/String;");
    if (FUNC0())
        goto end;

    jstring jstr = (*env)->GetStaticObjectField(env, clazz, id);

    if (FUNC0())
        goto end;

    const char *str = (*env)->GetStringUTFChars(env, jstr, 0);
    if (str)
    {
        manufacturer = FUNC1(str);
        (*env)->ReleaseStringUTFChars(env, jstr, str);
    }

end:
    (*env)->DeleteLocalRef(env, clazz);
    return manufacturer;
}