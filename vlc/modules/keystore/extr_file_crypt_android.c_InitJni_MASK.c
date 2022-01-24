#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_8__ {int /*<<< orphan*/  getSecretKey; } ;
struct TYPE_11__ {int /*<<< orphan*/  DECRYPT_MODE; int /*<<< orphan*/  ENCRYPT_MODE; int /*<<< orphan*/  getIV; int /*<<< orphan*/  doFinal; int /*<<< orphan*/  init; int /*<<< orphan*/  getInstance; int /*<<< orphan*/  ctor; TYPE_1__ SecretKeyEntry; int /*<<< orphan*/  getEntry; int /*<<< orphan*/  load; } ;
struct TYPE_10__ {int /*<<< orphan*/  toString; } ;
struct TYPE_9__ {int /*<<< orphan*/  VLC_CIPHER; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_4__ Cipher ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  GetMethodID ; 
 int /*<<< orphan*/  GetStaticMethodID ; 
 TYPE_4__ IvParameterSpec ; 
 TYPE_4__ KeyStore ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 TYPE_3__ Object ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 TYPE_2__ fields ; 

__attribute__((used)) static int
FUNC8(vlc_keystore *p_keystore, JNIEnv *p_env)
{
    jclass clazz = NULL;

    FUNC2("java/lang/Object");
    FUNC5(GetMethodID, Object.toString, "toString", "()Ljava/lang/String;");

    FUNC2("java/security/KeyStore");
    FUNC4(KeyStore);
    FUNC5(GetStaticMethodID, KeyStore.getInstance, "getInstance",
           "(Ljava/lang/String;)Ljava/security/KeyStore;");
    FUNC5(GetMethodID, KeyStore.load, "load",
           "(Ljava/security/KeyStore$LoadStoreParameter;)V");
    FUNC5(GetMethodID, KeyStore.getEntry, "getEntry",
           "(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)"
           "Ljava/security/KeyStore$Entry;");

    FUNC2("java/security/KeyStore$SecretKeyEntry");
    FUNC5(GetMethodID, KeyStore.SecretKeyEntry.getSecretKey, "getSecretKey",
           "()Ljavax/crypto/SecretKey;");


    FUNC2("javax/crypto/spec/IvParameterSpec");
    FUNC4(IvParameterSpec);
    FUNC5(GetMethodID, IvParameterSpec.ctor, "<init>", "([B)V");

    FUNC2("javax/crypto/Cipher");
    FUNC4(Cipher);
    FUNC5(GetStaticMethodID, Cipher.getInstance, "getInstance",
           "(Ljava/lang/String;)Ljavax/crypto/Cipher;");
    FUNC5(GetMethodID, Cipher.init, "init",
           "(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V");
    FUNC5(GetMethodID, Cipher.doFinal, "doFinal", "([B)[B");
    FUNC5(GetMethodID, Cipher.getIV, "getIV", "()[B");
    FUNC3(Cipher.ENCRYPT_MODE, "ENCRYPT_MODE");
    FUNC3(Cipher.DECRYPT_MODE, "DECRYPT_MODE");

    FUNC1(clazz);

    jstring VLC_CIPHER = FUNC7("AES/CBC/PKCS7Padding");
    if (FUNC0())
        return VLC_EGENERIC;
    fields.VLC_CIPHER = FUNC6(VLC_CIPHER);
    FUNC1(VLC_CIPHER);

    return VLC_SUCCESS;
}