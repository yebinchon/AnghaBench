#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/  jbyte ;
struct TYPE_13__ {int /*<<< orphan*/  init; int /*<<< orphan*/  getInstance; } ;
struct TYPE_10__ {int /*<<< orphan*/  DECRYPT_MODE; } ;
struct TYPE_12__ {TYPE_1__ Cipher; int /*<<< orphan*/  VLC_CIPHER; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* SetByteArrayRegion ) (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* NewByteArray ) (TYPE_2__**,int) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_8__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_8__ Cipher ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC4 () ; 
 int /*<<< orphan*/  IvParameterSpec ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_5__ fields ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  s_jkey ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC10(vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
               size_t i_src_len, uint8_t **pp_dst)
{
    (void) p_ctx;
    JNIEnv *p_env = FUNC4();
    if (p_env == NULL)
        return 0;

    jobject jivArray = NULL, jiv = NULL, jcipher = NULL;

    jcipher = FUNC0(Cipher, Cipher.getInstance, fields.VLC_CIPHER);
    if (FUNC2())
        return 0;

    /* Get the IV located at the beginning of the secret */
    size_t i_dst_len = 0;
    uint32_t i_iv_len;
    if (i_src_len < sizeof(uint32_t))
        goto end;

    FUNC7(&i_iv_len, p_src, sizeof(uint32_t));
    if (i_iv_len == 0 || i_src_len < (sizeof(uint32_t) + i_iv_len))
        goto end;

    jivArray = (*p_env)->NewByteArray(p_env, i_iv_len);
    if (FUNC2())
        goto end;
    (*p_env)->SetByteArrayRegion(p_env, jivArray, 0, i_iv_len,
                                 (jbyte *)(p_src + sizeof(uint32_t)) );

    jiv = FUNC5(IvParameterSpec, jivArray);
    if (FUNC2())
        goto end;

    /* Use the IV to initialize the decrypt Cipher */
    FUNC1(jcipher, Cipher.init, fields.Cipher.DECRYPT_MODE, s_jkey, jiv);
    if (FUNC2())
        goto end;

    i_dst_len = FUNC6(p_keystore, p_env, jcipher,
                        p_src + sizeof(uint32_t) + i_iv_len,
                        i_src_len - sizeof(uint32_t) - i_iv_len,
                        NULL, 0, pp_dst);

end:
    FUNC3(jcipher);
    if (jivArray != NULL)
        FUNC3(jivArray);
    if (jiv != NULL)
        FUNC3(jiv);
    return i_dst_len;
}