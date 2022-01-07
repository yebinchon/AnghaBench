
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int vlc_keystore ;
typedef int jstring ;
typedef int * jobjectArray ;
typedef int * jobject ;
typedef int * jclass ;
struct TYPE_19__ {int generateKey; int init; int getInstance; } ;
struct TYPE_18__ {int build; int setEncryptionPaddings; int setBlockModes; int setKeySize; } ;
struct TYPE_15__ {int PURPOSE_ENCRYPT; int PURPOSE_DECRYPT; int KEY_ALGORITHM_AES; int ENCRYPTION_PADDING_PKCS7; int BLOCK_MODE_CBC; } ;
struct TYPE_17__ {TYPE_1__ KeyProperties; } ;
struct TYPE_16__ {int (* SetObjectArrayElement ) (TYPE_2__**,int *,int ,int ) ;int * (* NewObjectArray ) (TYPE_2__**,int,int *,int *) ;int * (* FindClass ) (TYPE_2__**,char*) ;} ;
struct TYPE_14__ {TYPE_8__ Builder; } ;
typedef TYPE_2__* JNIEnv ;


 int * CALL_OBJ (int *,int ,...) ;
 int * CALL_STATICOBJ (TYPE_9__,int ,int ,int ) ;
 int CALL_VOID (int *,int ,int *) ;
 scalar_t__ CHECK_EXCEPTION () ;
 int DEL_LREF (int *) ;
 scalar_t__ InitJniGenKey (int *,TYPE_2__**) ;
 TYPE_10__ KeyGenParameterSpec ;
 TYPE_9__ KeyGenerator ;
 int * NEW_OBJECT (TYPE_8__,int ,int) ;
 scalar_t__ VLC_SUCCESS ;
 TYPE_7__ fields ;
 int * stub1 (TYPE_2__**,char*) ;
 int * stub2 (TYPE_2__**,int,int *,int *) ;
 int stub3 (TYPE_2__**,int *,int ,int ) ;
 int stub4 (TYPE_2__**,int *,int ,int ) ;

__attribute__((used)) static jobject
GenerateKey(vlc_keystore *p_keystore, JNIEnv *p_env, jstring jstringAlias,
            jstring jstringProvider)
{
    if (InitJniGenKey(p_keystore, p_env) != VLC_SUCCESS)
        return ((void*)0);

    jobject jkey = ((void*)0), jbuilder = ((void*)0), jspec = ((void*)0),
            jkeyGen = ((void*)0);
    jclass jstringClass = ((void*)0);
    jobjectArray jarray = ((void*)0);

    jbuilder = NEW_OBJECT(KeyGenParameterSpec.Builder, jstringAlias,
                          fields.KeyProperties.PURPOSE_ENCRYPT |
                          fields.KeyProperties.PURPOSE_DECRYPT);
    CALL_OBJ(jbuilder, KeyGenParameterSpec.Builder.setKeySize, 256);

    jstringClass = (*p_env)->FindClass(p_env, "java/lang/String");
    if (CHECK_EXCEPTION())
        goto end;

    jarray = (*p_env)->NewObjectArray(p_env, 1, jstringClass, ((void*)0));
    if (CHECK_EXCEPTION())
        goto end;

    (*p_env)->SetObjectArrayElement(p_env, jarray, 0,
                                    fields.KeyProperties.BLOCK_MODE_CBC);
    CALL_OBJ(jbuilder, KeyGenParameterSpec.Builder.setBlockModes, jarray);

    (*p_env)->SetObjectArrayElement(p_env, jarray, 0,
                                    fields.KeyProperties.ENCRYPTION_PADDING_PKCS7);
    CALL_OBJ(jbuilder, KeyGenParameterSpec.Builder.setEncryptionPaddings, jarray);
    jspec = CALL_OBJ(jbuilder, KeyGenParameterSpec.Builder.build);
    if (CHECK_EXCEPTION())
        goto end;

    jkeyGen = CALL_STATICOBJ(KeyGenerator, KeyGenerator.getInstance,
                             fields.KeyProperties.KEY_ALGORITHM_AES,
                             jstringProvider);
    if (CHECK_EXCEPTION())
        goto end;

    CALL_VOID(jkeyGen, KeyGenerator.init, jspec);
    if (CHECK_EXCEPTION())
        goto end;

    jkey = CALL_OBJ(jkeyGen, KeyGenerator.generateKey);
    CHECK_EXCEPTION();

end:
    if (jbuilder != ((void*)0))
        DEL_LREF(jbuilder);
    if (jstringClass != ((void*)0))
        DEL_LREF(jstringClass);
    if (jarray != ((void*)0))
        DEL_LREF(jarray);
    if (jspec != ((void*)0))
        DEL_LREF(jspec);
    if (jkeyGen != ((void*)0))
        DEL_LREF(jkeyGen);

    return jkey;
}
