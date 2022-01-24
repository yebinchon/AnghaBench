#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/ * jthrowable ;
typedef  int /*<<< orphan*/ * jstring ;
struct TYPE_13__ {int /*<<< orphan*/  toString; } ;
struct TYPE_10__ {int /*<<< orphan*/ * toString; } ;
struct TYPE_12__ {TYPE_1__ Object; } ;
struct TYPE_11__ {char* (* GetStringUTFChars ) (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_2__**,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_2__**) ;int /*<<< orphan*/ * (* ExceptionOccurred ) (TYPE_2__**) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_9__ Object ; 
 TYPE_7__ fields ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 char* FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool
FUNC7(vlc_keystore *p_keystore, JNIEnv *p_env)
{
    jthrowable jex = (*p_env)->ExceptionOccurred(p_env);
    if (jex != NULL)
    {
        (*p_env)->ExceptionClear(p_env);
        if (fields.Object.toString != NULL)
        {
            const char *psz_str = NULL;
            jstring jstr = NULL;

            jstr = (jstring) FUNC0(jex, Object.toString);
            if (jstr != NULL)
                psz_str = (*p_env)->GetStringUTFChars(p_env, jstr, NULL);
            if (psz_str != NULL)
            {
                FUNC2(p_keystore, "%s", psz_str);
                (*p_env)->ReleaseStringUTFChars(p_env, jstr, psz_str);
            }
            FUNC1(jstr);
        }
        else
            FUNC2(p_keystore, "unknown exception");
        FUNC1(jex);
        return true;
    }
    return false;
}