#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_4__ {int /*<<< orphan*/  getSecretKey; } ;
struct TYPE_5__ {TYPE_1__ SecretKeyEntry; int /*<<< orphan*/  getEntry; int /*<<< orphan*/  load; int /*<<< orphan*/  getInstance; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ KeyStore ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  s_jkey ; 

__attribute__((used)) static void
FUNC10(vlc_keystore *p_keystore)
{
    JNIEnv *p_env = FUNC5();
    if (p_env == NULL)
        return;

    if (FUNC7(p_keystore, p_env) != VLC_SUCCESS)
        return;

    jobject jkeystore = NULL, jentry = NULL, jkey = NULL;
    jstring jstringAlias = NULL, jstringProvider = NULL;

    jstringAlias = FUNC9("LibVLCAndroid");
    if (FUNC3())
        goto end;

    jstringProvider = FUNC9("AndroidKeyStore");
    if (FUNC3())
        goto end;

    jkeystore = FUNC1(KeyStore, KeyStore.getInstance, jstringProvider);
    if (FUNC3())
        goto end;

    FUNC2(jkeystore, KeyStore.load, NULL);
    if (FUNC3())
        goto end;

    jentry = FUNC0(jkeystore, KeyStore.getEntry, jstringAlias, NULL);
    if (FUNC3())
        goto end;
    if (jentry != NULL)
    {
        jkey = FUNC0(jentry, KeyStore.SecretKeyEntry.getSecretKey);
        if (FUNC3())
            goto end;
    }
    else
    {
        jkey = FUNC6(p_keystore, p_env, jstringAlias, jstringProvider);
        if (jkey == NULL)
            goto end;
    }

    s_jkey = FUNC8(jkey);

end:
    if (jstringAlias != NULL)
        FUNC4(jstringAlias);
    if (jstringProvider != NULL)
        FUNC4(jstringProvider);
    if (jkeystore != NULL)
        FUNC4(jkeystore);
    if (jentry != NULL)
        FUNC4(jentry);
    if (jkey != NULL)
        FUNC4(jkey);
}