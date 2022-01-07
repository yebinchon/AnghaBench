
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int uint8_t ;
typedef scalar_t__ jsize ;
typedef int * jobject ;
typedef int jbyte ;
typedef int * jarray ;
struct TYPE_14__ {int getIV; int init; int getInstance; } ;
struct TYPE_11__ {int ENCRYPT_MODE; } ;
struct TYPE_13__ {TYPE_1__ Cipher; int VLC_CIPHER; } ;
struct TYPE_12__ {scalar_t__ (* GetArrayLength ) (TYPE_2__**,int *) ;int (* ReleaseByteArrayElements ) (TYPE_2__**,int *,int *,int ) ;int * (* GetByteArrayElements ) (TYPE_2__**,int *,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int CALL_OBJ (int *,int ) ;
 int * CALL_STATICOBJ (TYPE_9__,int ,int ) ;
 int CALL_VOID (int *,int ,int ,int ,int *) ;
 scalar_t__ CHECK_EXCEPTION () ;
 TYPE_9__ Cipher ;
 int DEL_LREF (int *) ;
 TYPE_2__** GET_ENV () ;
 size_t Process (int *,TYPE_2__**,int *,int const*,size_t,int const*,scalar_t__,int **) ;
 TYPE_6__ fields ;
 int s_jkey ;
 scalar_t__ stub1 (TYPE_2__**,int *) ;
 int * stub2 (TYPE_2__**,int *,int ) ;
 int stub3 (TYPE_2__**,int *,int *,int ) ;

__attribute__((used)) static size_t
AndroidEncrypt(vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
               size_t i_src_len, uint8_t **pp_dst)
{
    (void) p_ctx;
    JNIEnv *p_env = GET_ENV();
    if (p_env == ((void*)0))
        return 0;

    jobject jcipher = ((void*)0);
    jcipher = CALL_STATICOBJ(Cipher, Cipher.getInstance, fields.VLC_CIPHER);
    if (CHECK_EXCEPTION())
        return 0;

    size_t i_dst_len = 0;
    CALL_VOID(jcipher, Cipher.init, fields.Cipher.ENCRYPT_MODE, s_jkey, ((void*)0));
    if (CHECK_EXCEPTION())
        goto end;




    jarray jivArray = (jarray) CALL_OBJ(jcipher, Cipher.getIV);
    if (jivArray == ((void*)0))
        goto end;

    jsize i_iv_len = (*p_env)->GetArrayLength(p_env, jivArray);
    if (i_iv_len == 0)
        goto end;
    jbyte *p_iv_bytes = (*p_env)->GetByteArrayElements(p_env, jivArray, 0);

    i_dst_len = Process(p_keystore, p_env, jcipher, p_src, i_src_len,
                        (const uint8_t *)p_iv_bytes, i_iv_len, pp_dst);

    (*p_env)->ReleaseByteArrayElements(p_env, jivArray, p_iv_bytes, 0);
    DEL_LREF(jivArray);

end:

    DEL_LREF(jcipher);
    return i_dst_len;
}
