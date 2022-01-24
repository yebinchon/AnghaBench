#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/  jstring ;
typedef  int /*<<< orphan*/ * jobjectArray ;
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_19__ {int /*<<< orphan*/  generateKey; int /*<<< orphan*/  init; int /*<<< orphan*/  getInstance; } ;
struct TYPE_18__ {int /*<<< orphan*/  build; int /*<<< orphan*/  setEncryptionPaddings; int /*<<< orphan*/  setBlockModes; int /*<<< orphan*/  setKeySize; } ;
struct TYPE_15__ {int PURPOSE_ENCRYPT; int PURPOSE_DECRYPT; int /*<<< orphan*/  KEY_ALGORITHM_AES; int /*<<< orphan*/  ENCRYPTION_PADDING_PKCS7; int /*<<< orphan*/  BLOCK_MODE_CBC; } ;
struct TYPE_17__ {TYPE_1__ KeyProperties; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* SetObjectArrayElement ) (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* NewObjectArray ) (TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* FindClass ) (TYPE_2__**,char*) ;} ;
struct TYPE_14__ {TYPE_8__ Builder; } ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_9__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 TYPE_10__ KeyGenParameterSpec ; 
 TYPE_9__ KeyGenerator ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_8__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ VLC_SUCCESS ; 
 TYPE_7__ fields ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__**,char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jobject
FUNC11(vlc_keystore *p_keystore, JNIEnv *p_env, jstring jstringAlias,
            jstring jstringProvider)
{
    if (FUNC5(p_keystore, p_env) != VLC_SUCCESS)
        return NULL;

    jobject jkey = NULL, jbuilder = NULL, jspec = NULL,
            jkeyGen = NULL;
    jclass jstringClass = NULL;
    jobjectArray jarray = NULL;

    jbuilder = FUNC6(KeyGenParameterSpec.Builder, jstringAlias,
                          fields.KeyProperties.PURPOSE_ENCRYPT |
                          fields.KeyProperties.PURPOSE_DECRYPT);
    FUNC0(jbuilder, KeyGenParameterSpec.Builder.setKeySize, 256);

    jstringClass = (*p_env)->FindClass(p_env, "java/lang/String");
    if (FUNC3())
        goto end;

    jarray = (*p_env)->NewObjectArray(p_env, 1, jstringClass, NULL);
    if (FUNC3())
        goto end;

    (*p_env)->SetObjectArrayElement(p_env, jarray, 0,
                                    fields.KeyProperties.BLOCK_MODE_CBC);
    FUNC0(jbuilder, KeyGenParameterSpec.Builder.setBlockModes, jarray);

    (*p_env)->SetObjectArrayElement(p_env, jarray, 0,
                                    fields.KeyProperties.ENCRYPTION_PADDING_PKCS7);
    FUNC0(jbuilder, KeyGenParameterSpec.Builder.setEncryptionPaddings, jarray);
    jspec = FUNC0(jbuilder, KeyGenParameterSpec.Builder.build);
    if (FUNC3())
        goto end;

    jkeyGen = FUNC1(KeyGenerator, KeyGenerator.getInstance,
                             fields.KeyProperties.KEY_ALGORITHM_AES,
                             jstringProvider);
    if (FUNC3())
        goto end;

    FUNC2(jkeyGen, KeyGenerator.init, jspec);
    if (FUNC3())
        goto end;

    jkey = FUNC0(jkeyGen, KeyGenerator.generateKey);
    FUNC3();

end:
    if (jbuilder != NULL)
        FUNC4(jbuilder);
    if (jstringClass != NULL)
        FUNC4(jstringClass);
    if (jarray != NULL)
        FUNC4(jarray);
    if (jspec != NULL)
        FUNC4(jspec);
    if (jkeyGen != NULL)
        FUNC4(jkeyGen);

    return jkey;
}