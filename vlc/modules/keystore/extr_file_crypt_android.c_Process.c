
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int jsize ;
typedef int jobject ;
typedef int * jbyteArray ;
typedef int const jbyte ;
struct TYPE_11__ {int doFinal; } ;
struct TYPE_10__ {int (* GetArrayLength ) (TYPE_1__**,int *) ;int* (* GetByteArrayElements ) (TYPE_1__**,int *,int ) ;int (* ReleaseByteArrayElements ) (TYPE_1__**,int *,int const*,int ) ;int (* SetByteArrayRegion ) (TYPE_1__**,int *,int ,size_t,int const*) ;int * (* NewByteArray ) (TYPE_1__**,size_t) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ CALL_OBJ (int ,int ,int *) ;
 scalar_t__ CHECK_EXCEPTION () ;
 TYPE_9__ Cipher ;
 int DEL_LREF (int *) ;
 int free (int*) ;
 int* malloc (int) ;
 int memcpy (int*,int const*,int) ;
 int * stub1 (TYPE_1__**,size_t) ;
 int stub2 (TYPE_1__**,int *,int ,size_t,int const*) ;
 int stub3 (TYPE_1__**,int *) ;
 int* stub4 (TYPE_1__**,int *,int ) ;
 int stub5 (TYPE_1__**,int *,int const*,int ) ;
 int stub6 (TYPE_1__**,int *,int const*,int ) ;

__attribute__((used)) static size_t
Process(vlc_keystore *p_keystore, JNIEnv *p_env, jobject jcipher,
        const uint8_t *p_src, size_t i_src_len,
        const uint8_t *p_iv, uint32_t i_iv_len, uint8_t **pp_dst)
{
    size_t i_dst_size = 0;
    uint8_t *p_dst;
    jbyteArray jsrcArray = ((void*)0), jdstArray = ((void*)0);

    jsrcArray = (*p_env)->NewByteArray(p_env, i_src_len);
    if (CHECK_EXCEPTION())
        goto end;
    (*p_env)->SetByteArrayRegion(p_env, jsrcArray, 0, i_src_len, (jbyte *)p_src);

    jdstArray = (jbyteArray) CALL_OBJ(jcipher, Cipher.doFinal, jsrcArray);
    if (CHECK_EXCEPTION())
        goto end;

    if (jdstArray == ((void*)0))
        goto end;

    jsize dstSize = (*p_env)->GetArrayLength(p_env, jdstArray);

    if (dstSize == 0)
        goto end;

    jbyte *p_bytes = (*p_env)->GetByteArrayElements(p_env, jdstArray, 0);

    p_dst = i_iv_len > 0 ? malloc(dstSize + i_iv_len + sizeof(uint32_t))
                         : malloc(dstSize);
    if (p_dst == ((void*)0))
    {
        (*p_env)->ReleaseByteArrayElements(p_env, jdstArray, p_bytes, 0);
        free(p_dst);
        goto end;
    }

    if (i_iv_len > 0)
    {

        memcpy(p_dst, &i_iv_len, sizeof(uint32_t));
        memcpy(p_dst + sizeof(uint32_t), p_iv, i_iv_len);
        memcpy(p_dst + sizeof(uint32_t) + i_iv_len, p_bytes, dstSize);
        i_dst_size = dstSize + i_iv_len + sizeof(uint32_t);
    }
    else
    {
        memcpy(p_dst, p_bytes, dstSize);
        i_dst_size = dstSize;
    }
    (*p_env)->ReleaseByteArrayElements(p_env, jdstArray, p_bytes, 0);

    *pp_dst = p_dst;

end:
    if (jsrcArray != ((void*)0))
        DEL_LREF(jsrcArray);
    if (jdstArray != ((void*)0))
        DEL_LREF(jdstArray);
    return i_dst_size;
}
