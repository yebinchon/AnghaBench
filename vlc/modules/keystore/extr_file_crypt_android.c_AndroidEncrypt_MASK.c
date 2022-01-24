#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ jsize ;
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/  jbyte ;
typedef  int /*<<< orphan*/ * jarray ;
struct TYPE_14__ {int /*<<< orphan*/  getIV; int /*<<< orphan*/  init; int /*<<< orphan*/  getInstance; } ;
struct TYPE_11__ {int /*<<< orphan*/  ENCRYPT_MODE; } ;
struct TYPE_13__ {TYPE_1__ Cipher; int /*<<< orphan*/  VLC_CIPHER; } ;
struct TYPE_12__ {scalar_t__ (* GetArrayLength ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ReleaseByteArrayElements ) (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* GetByteArrayElements ) (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_9__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_9__ Cipher ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC5 () ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ **) ; 
 TYPE_6__ fields ; 
 int /*<<< orphan*/  s_jkey ; 
 scalar_t__ FUNC7 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC10(vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
               size_t i_src_len, uint8_t **pp_dst)
{
    (void) p_ctx;
    JNIEnv *p_env = FUNC5();
    if (p_env == NULL)
        return 0;

    jobject jcipher = NULL;
    jcipher = FUNC1(Cipher, Cipher.getInstance, fields.VLC_CIPHER);
    if (FUNC3())
        return 0;

    size_t i_dst_len = 0;
    FUNC2(jcipher, Cipher.init, fields.Cipher.ENCRYPT_MODE, s_jkey, NULL);
    if (FUNC3())
        goto end;

    /* Get the IV (Initialization Vector) initialized by Android that will be
     * used to decrypt this secret. This IV will be stored with the encrypted
     * secret */
    jarray jivArray = (jarray) FUNC0(jcipher, Cipher.getIV);
    if (jivArray == NULL)
        goto end;

    jsize i_iv_len = (*p_env)->GetArrayLength(p_env, jivArray);
    if (i_iv_len == 0)
        goto end;
    jbyte *p_iv_bytes = (*p_env)->GetByteArrayElements(p_env, jivArray, 0);

    i_dst_len = FUNC6(p_keystore, p_env, jcipher, p_src, i_src_len,
                        (const uint8_t *)p_iv_bytes, i_iv_len, pp_dst);

    (*p_env)->ReleaseByteArrayElements(p_env, jivArray, p_iv_bytes, 0);
    FUNC4(jivArray);

end:

    FUNC4(jcipher);
    return i_dst_len;
}