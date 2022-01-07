
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int * jstring ;
typedef int * jobject ;
struct TYPE_4__ {int getSecretKey; } ;
struct TYPE_5__ {TYPE_1__ SecretKeyEntry; int getEntry; int load; int getInstance; } ;
typedef int JNIEnv ;


 int * CALL_OBJ (int *,int ,...) ;
 int * CALL_STATICOBJ (TYPE_2__,int ,int *) ;
 int CALL_VOID (int *,int ,int *) ;
 scalar_t__ CHECK_EXCEPTION () ;
 int DEL_LREF (int *) ;
 int * GET_ENV () ;
 int * GenerateKey (int *,int *,int *,int *) ;
 scalar_t__ InitJni (int *,int *) ;
 TYPE_2__ KeyStore ;
 int NEW_GREF (int *) ;
 int * NEW_STR (char*) ;
 scalar_t__ VLC_SUCCESS ;
 int s_jkey ;

__attribute__((used)) static void
AndroidInit(vlc_keystore *p_keystore)
{
    JNIEnv *p_env = GET_ENV();
    if (p_env == ((void*)0))
        return;

    if (InitJni(p_keystore, p_env) != VLC_SUCCESS)
        return;

    jobject jkeystore = ((void*)0), jentry = ((void*)0), jkey = ((void*)0);
    jstring jstringAlias = ((void*)0), jstringProvider = ((void*)0);

    jstringAlias = NEW_STR("LibVLCAndroid");
    if (CHECK_EXCEPTION())
        goto end;

    jstringProvider = NEW_STR("AndroidKeyStore");
    if (CHECK_EXCEPTION())
        goto end;

    jkeystore = CALL_STATICOBJ(KeyStore, KeyStore.getInstance, jstringProvider);
    if (CHECK_EXCEPTION())
        goto end;

    CALL_VOID(jkeystore, KeyStore.load, ((void*)0));
    if (CHECK_EXCEPTION())
        goto end;

    jentry = CALL_OBJ(jkeystore, KeyStore.getEntry, jstringAlias, ((void*)0));
    if (CHECK_EXCEPTION())
        goto end;
    if (jentry != ((void*)0))
    {
        jkey = CALL_OBJ(jentry, KeyStore.SecretKeyEntry.getSecretKey);
        if (CHECK_EXCEPTION())
            goto end;
    }
    else
    {
        jkey = GenerateKey(p_keystore, p_env, jstringAlias, jstringProvider);
        if (jkey == ((void*)0))
            goto end;
    }

    s_jkey = NEW_GREF(jkey);

end:
    if (jstringAlias != ((void*)0))
        DEL_LREF(jstringAlias);
    if (jstringProvider != ((void*)0))
        DEL_LREF(jstringProvider);
    if (jkeystore != ((void*)0))
        DEL_LREF(jkeystore);
    if (jentry != ((void*)0))
        DEL_LREF(jentry);
    if (jkey != ((void*)0))
        DEL_LREF(jkey);
}
