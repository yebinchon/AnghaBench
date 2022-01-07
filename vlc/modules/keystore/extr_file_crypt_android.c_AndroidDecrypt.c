
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int * jobject ;
typedef int jbyte ;
struct TYPE_13__ {int init; int getInstance; } ;
struct TYPE_10__ {int DECRYPT_MODE; } ;
struct TYPE_12__ {TYPE_1__ Cipher; int VLC_CIPHER; } ;
struct TYPE_11__ {int (* SetByteArrayRegion ) (TYPE_2__**,int *,int ,int,int *) ;int * (* NewByteArray ) (TYPE_2__**,int) ;} ;
typedef TYPE_2__* JNIEnv ;


 int * CALL_STATICOBJ (TYPE_8__,int ,int ) ;
 int CALL_VOID (int *,int ,int ,int ,int *) ;
 scalar_t__ CHECK_EXCEPTION () ;
 TYPE_8__ Cipher ;
 int DEL_LREF (int *) ;
 TYPE_2__** GET_ENV () ;
 int IvParameterSpec ;
 int * NEW_OBJECT (int ,int *) ;
 size_t Process (int *,TYPE_2__**,int *,int const*,size_t,int *,int ,int **) ;
 TYPE_5__ fields ;
 int memcpy (int*,int const*,int) ;
 int s_jkey ;
 int * stub1 (TYPE_2__**,int) ;
 int stub2 (TYPE_2__**,int *,int ,int,int *) ;

__attribute__((used)) static size_t
AndroidDecrypt(vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
               size_t i_src_len, uint8_t **pp_dst)
{
    (void) p_ctx;
    JNIEnv *p_env = GET_ENV();
    if (p_env == ((void*)0))
        return 0;

    jobject jivArray = ((void*)0), jiv = ((void*)0), jcipher = ((void*)0);

    jcipher = CALL_STATICOBJ(Cipher, Cipher.getInstance, fields.VLC_CIPHER);
    if (CHECK_EXCEPTION())
        return 0;


    size_t i_dst_len = 0;
    uint32_t i_iv_len;
    if (i_src_len < sizeof(uint32_t))
        goto end;

    memcpy(&i_iv_len, p_src, sizeof(uint32_t));
    if (i_iv_len == 0 || i_src_len < (sizeof(uint32_t) + i_iv_len))
        goto end;

    jivArray = (*p_env)->NewByteArray(p_env, i_iv_len);
    if (CHECK_EXCEPTION())
        goto end;
    (*p_env)->SetByteArrayRegion(p_env, jivArray, 0, i_iv_len,
                                 (jbyte *)(p_src + sizeof(uint32_t)) );

    jiv = NEW_OBJECT(IvParameterSpec, jivArray);
    if (CHECK_EXCEPTION())
        goto end;


    CALL_VOID(jcipher, Cipher.init, fields.Cipher.DECRYPT_MODE, s_jkey, jiv);
    if (CHECK_EXCEPTION())
        goto end;

    i_dst_len = Process(p_keystore, p_env, jcipher,
                        p_src + sizeof(uint32_t) + i_iv_len,
                        i_src_len - sizeof(uint32_t) - i_iv_len,
                        ((void*)0), 0, pp_dst);

end:
    DEL_LREF(jcipher);
    if (jivArray != ((void*)0))
        DEL_LREF(jivArray);
    if (jiv != ((void*)0))
        DEL_LREF(jiv);
    return i_dst_len;
}
