#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_6__ {int /*<<< orphan*/  generateKey; int /*<<< orphan*/  init; int /*<<< orphan*/  getInstance; int /*<<< orphan*/  build; int /*<<< orphan*/  setEncryptionPaddings; int /*<<< orphan*/  setBlockModes; int /*<<< orphan*/  setKeySize; int /*<<< orphan*/  ctor; } ;
struct TYPE_7__ {TYPE_2__ Builder; } ;
struct TYPE_5__ {int /*<<< orphan*/  KEY_ALGORITHM_AES; int /*<<< orphan*/  ENCRYPTION_PADDING_PKCS7; int /*<<< orphan*/  BLOCK_MODE_CBC; int /*<<< orphan*/  PURPOSE_DECRYPT; int /*<<< orphan*/  PURPOSE_ENCRYPT; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  GetMethodID ; 
 int /*<<< orphan*/  GetStaticMethodID ; 
 TYPE_3__ KeyGenParameterSpec ; 
 TYPE_2__ KeyGenerator ; 
 TYPE_1__ KeyProperties ; 
 int VLC_SUCCESS ; 

__attribute__((used)) static int
FUNC6(vlc_keystore *p_keystore, JNIEnv *p_env)
{
    jclass clazz = NULL;

    FUNC1("android/security/keystore/KeyProperties");
    FUNC2(KeyProperties.PURPOSE_ENCRYPT, "PURPOSE_ENCRYPT");
    FUNC2(KeyProperties.PURPOSE_DECRYPT, "PURPOSE_DECRYPT");
    FUNC3(KeyProperties.BLOCK_MODE_CBC,
                  "BLOCK_MODE_CBC", "Ljava/lang/String;");
    FUNC3(KeyProperties.ENCRYPTION_PADDING_PKCS7,
                  "ENCRYPTION_PADDING_PKCS7", "Ljava/lang/String;");
    FUNC3(KeyProperties.KEY_ALGORITHM_AES,
                  "KEY_ALGORITHM_AES", "Ljava/lang/String;");

    FUNC1("android/security/keystore/KeyGenParameterSpec$Builder");
    FUNC4(KeyGenParameterSpec.Builder);
    FUNC5(GetMethodID, KeyGenParameterSpec.Builder.ctor, "<init>",
           "(Ljava/lang/String;I)V");
    FUNC5(GetMethodID, KeyGenParameterSpec.Builder.setKeySize, "setKeySize",
           "(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    FUNC5(GetMethodID, KeyGenParameterSpec.Builder.setBlockModes, "setBlockModes",
           "([Ljava/lang/String;)"
           "Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    FUNC5(GetMethodID, KeyGenParameterSpec.Builder.setEncryptionPaddings,
           "setEncryptionPaddings", "([Ljava/lang/String;)"
           "Landroid/security/keystore/KeyGenParameterSpec$Builder;");
    FUNC5(GetMethodID, KeyGenParameterSpec.Builder.build, "build",
           "()Landroid/security/keystore/KeyGenParameterSpec;");

    FUNC1("javax/crypto/KeyGenerator");
    FUNC4(KeyGenerator);
    FUNC5(GetStaticMethodID, KeyGenerator.getInstance, "getInstance",
           "(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;");
    FUNC5(GetMethodID, KeyGenerator.init, "init",
           "(Ljava/security/spec/AlgorithmParameterSpec;)V");
    FUNC5(GetMethodID, KeyGenerator.generateKey, "generateKey",
           "()Ljavax/crypto/SecretKey;");

    FUNC0(clazz);
    return VLC_SUCCESS;
}