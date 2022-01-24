#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int jsize ;
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/ * jbyteArray ;
typedef  int const jbyte ;
struct TYPE_11__ {int /*<<< orphan*/  doFinal; } ;
struct TYPE_10__ {int (* GetArrayLength ) (TYPE_1__**,int /*<<< orphan*/ *) ;int* (* GetByteArrayElements ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ReleaseByteArrayElements ) (TYPE_1__**,int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetByteArrayRegion ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int const*) ;int /*<<< orphan*/ * (* NewByteArray ) (TYPE_1__**,size_t) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_9__ Cipher ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__**,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int const*) ; 
 int FUNC8 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int* FUNC9 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC12(vlc_keystore *p_keystore, JNIEnv *p_env, jobject jcipher,
        const uint8_t *p_src, size_t i_src_len,
        const uint8_t *p_iv, uint32_t i_iv_len, uint8_t **pp_dst)
{
    size_t i_dst_size = 0;
    uint8_t *p_dst;
    jbyteArray jsrcArray = NULL, jdstArray = NULL;

    jsrcArray = (*p_env)->NewByteArray(p_env, i_src_len);
    if (FUNC1())
        goto end;
    (*p_env)->SetByteArrayRegion(p_env, jsrcArray, 0, i_src_len, (jbyte *)p_src);

    jdstArray = (jbyteArray) FUNC0(jcipher, Cipher.doFinal, jsrcArray);
    if (FUNC1())
        goto end;

    if (jdstArray == NULL)
        goto end;

    jsize dstSize = (*p_env)->GetArrayLength(p_env, jdstArray);

    if (dstSize == 0)
        goto end;

    jbyte *p_bytes = (*p_env)->GetByteArrayElements(p_env, jdstArray, 0);

    p_dst = i_iv_len > 0 ? FUNC4(dstSize + i_iv_len + sizeof(uint32_t))
                         : FUNC4(dstSize);
    if (p_dst == NULL)
    {
        (*p_env)->ReleaseByteArrayElements(p_env, jdstArray, p_bytes, 0);
        FUNC3(p_dst);
        goto end;
    }

    if (i_iv_len > 0)
    {
        /* Store the IV just before the encrypted password */
        FUNC5(p_dst, &i_iv_len, sizeof(uint32_t));
        FUNC5(p_dst + sizeof(uint32_t), p_iv, i_iv_len);
        FUNC5(p_dst + sizeof(uint32_t) + i_iv_len, p_bytes, dstSize);
        i_dst_size = dstSize + i_iv_len + sizeof(uint32_t);
    }
    else
    {
        FUNC5(p_dst, p_bytes, dstSize);
        i_dst_size = dstSize;
    }
    (*p_env)->ReleaseByteArrayElements(p_env, jdstArray, p_bytes, 0);

    *pp_dst = p_dst;

end:
    if (jsrcArray != NULL)
        FUNC2(jsrcArray);
    if (jdstArray != NULL)
        FUNC2(jdstArray);
    return i_dst_size;
}