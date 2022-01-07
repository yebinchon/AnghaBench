
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int * jclass ;
struct TYPE_6__ {int generateKey; int init; int getInstance; int build; int setEncryptionPaddings; int setBlockModes; int setKeySize; int ctor; } ;
struct TYPE_7__ {TYPE_2__ Builder; } ;
struct TYPE_5__ {int KEY_ALGORITHM_AES; int ENCRYPTION_PADDING_PKCS7; int BLOCK_MODE_CBC; int PURPOSE_DECRYPT; int PURPOSE_ENCRYPT; } ;
typedef int JNIEnv ;


 int DEL_LREF (int *) ;
 int GET_CLASS (char*) ;
 int GET_CONST_INT (int ,char*) ;
 int GET_CONST_OBJ (int ,char*,char*) ;
 int GET_GLOBAL_CLASS (TYPE_2__) ;
 int GET_ID (int ,int ,char*,char*) ;
 int GetMethodID ;
 int GetStaticMethodID ;
 TYPE_3__ KeyGenParameterSpec ;
 TYPE_2__ KeyGenerator ;
 TYPE_1__ KeyProperties ;
 int VLC_SUCCESS ;

__attribute__((used)) static int
InitJniGenKey(vlc_keystore *p_keystore, JNIEnv *p_env)
{
    jclass clazz = ((void*)0);

    GET_CLASS("android/security/keystore/KeyProperties");
    GET_CONST_INT(KeyProperties.PURPOSE_ENCRYPT, "PURPOSE_ENCRYPT");
    GET_CONST_INT(KeyProperties.PURPOSE_DECRYPT, "PURPOSE_DECRYPT");
    GET_CONST_OBJ(KeyProperties.BLOCK_MODE_CBC,
                  "BLOCK_MODE_CBC", "Ljava/lang/String;");
    GET_CONST_OBJ(KeyProperties.ENCRYPTION_PADDING_PKCS7,
                  "ENCRYPTION_PADDING_PKCS7", "Ljava/lang/String;");
    GET_CONST_OBJ(KeyProperties.KEY_ALGORITHM_AES,
                  "KEY_ALGORITHM_AES", "Ljava/lang/String;");

    GET_CLASS("android/security/keystore/KeyGenParameterSpec$Builder");
    GET_GLOBAL_CLASS(KeyGenParameterSpec.Builder);
    GET_ID(GetMethodID, KeyGenParameterSpec.Builder.ctor, "<init>",
           "(Ljava/lang/String;I)V");
    GET_ID(GetMethodID, KeyGenParameterSpec.Builder.setKeySize, "setKeySize",
           "(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    GET_ID(GetMethodID, KeyGenParameterSpec.Builder.setBlockModes, "setBlockModes",
           "([Ljava/lang/String;)"
           "Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    GET_ID(GetMethodID, KeyGenParameterSpec.Builder.setEncryptionPaddings,
           "setEncryptionPaddings", "([Ljava/lang/String;)"
           "Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    GET_ID(GetMethodID, KeyGenParameterSpec.Builder.build, "build",
           "()Landroid/security/keystore/KeyGenParameterSpec;");

    GET_CLASS("javax/crypto/KeyGenerator");
    GET_GLOBAL_CLASS(KeyGenerator);
    GET_ID(GetStaticMethodID, KeyGenerator.getInstance, "getInstance",
           "(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;");
    GET_ID(GetMethodID, KeyGenerator.init, "init",
           "(Ljava/security/spec/AlgorithmParameterSpec;)V");
    GET_ID(GetMethodID, KeyGenerator.generateKey, "generateKey",
           "()Ljavax/crypto/SecretKey;");

    DEL_LREF(clazz);
    return VLC_SUCCESS;
}
