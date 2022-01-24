#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_19__ {char* (* GetStringUTFChars ) (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_3__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_3__**,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* CallStaticObjectMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_3__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;int /*<<< orphan*/ * (* NewStringUTF ) (TYPE_3__**,char const*) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  getAbsolutePath; } ;
struct TYPE_17__ {int /*<<< orphan*/  getExternalStoragePublicDirectory; int /*<<< orphan*/  clazz; } ;
struct TYPE_16__ {TYPE_2__ File; TYPE_1__ Environment; } ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 TYPE_15__ fields ; 
 TYPE_3__** FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 char* FUNC11 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static char *FUNC13(const char *psz_name)
{
    JNIEnv *env;
    bool b_detach;
    char *psz_ret = NULL;

    env = FUNC0(&b_detach);
    if (env == NULL)
        return NULL;

    jstring jname= (*env)->NewStringUTF(env, psz_name);
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        jname = NULL;
    }
    if (jname == NULL)
        goto error;

    jobject jfile = (*env)->CallStaticObjectMethod(env,
                        fields.Environment.clazz,
                        fields.Environment.getExternalStoragePublicDirectory,
                        jname);
    (*env)->DeleteLocalRef(env, jname);
    if (jfile == NULL)
        goto error;

    jstring jpath = (*env)->CallObjectMethod(env, jfile,
                                             fields.File.getAbsolutePath);
    (*env)->DeleteLocalRef(env, jfile);

    const char *psz_path = (*env)->GetStringUTFChars(env, jpath, 0);
    if (psz_path == NULL)
        goto error;
    psz_ret = FUNC2(psz_path);
    (*env)->ReleaseStringUTFChars(env, jpath, psz_path);
    (*env)->DeleteLocalRef(env, jpath);

error:
    FUNC1(b_detach);
    return psz_ret;
}