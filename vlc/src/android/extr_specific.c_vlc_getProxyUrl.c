
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_21__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int * jstring ;
struct TYPE_24__ {char* (* GetStringUTFChars ) (TYPE_2__**,int *,int ) ;int (* DeleteLocalRef ) (TYPE_2__**,int *) ;int (* ReleaseStringUTFChars ) (TYPE_2__**,int *,char const*) ;int * (* CallStaticObjectMethod ) (TYPE_2__**,int ,int ,int *) ;int (* ExceptionClear ) (TYPE_2__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int * (* NewStringUTF ) (TYPE_2__**,char*) ;} ;
struct TYPE_22__ {int getProperty; int clazz; } ;
struct TYPE_23__ {TYPE_1__ System; } ;
typedef TYPE_2__* JNIEnv ;


 int VLC_UNUSED (char const*) ;
 int asprintf (char**,char*,char const*,char*,char const*) ;
 TYPE_21__ fields ;
 TYPE_2__** get_env (int*) ;
 int release_env (int) ;
 int * stub1 (TYPE_2__**,char*) ;
 int * stub10 (TYPE_2__**,int ,int ,int *) ;
 int stub11 (TYPE_2__**,int *) ;
 char* stub12 (TYPE_2__**,int *,int ) ;
 int stub13 (TYPE_2__**,int *,char const*) ;
 int stub14 (TYPE_2__**,int *,char const*) ;
 int stub15 (TYPE_2__**,int *) ;
 int stub16 (TYPE_2__**,int *,char const*) ;
 int stub17 (TYPE_2__**,int *) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int stub3 (TYPE_2__**) ;
 int * stub4 (TYPE_2__**,int ,int ,int *) ;
 int stub5 (TYPE_2__**,int *) ;
 char* stub6 (TYPE_2__**,int *,int ) ;
 int * stub7 (TYPE_2__**,char*) ;
 scalar_t__ stub8 (TYPE_2__**) ;
 int stub9 (TYPE_2__**) ;

char *vlc_getProxyUrl(const char *url)
{
    VLC_UNUSED(url);
    JNIEnv *env;
    bool b_detach;
    char *psz_ret = ((void*)0);
    const char *psz_host = ((void*)0), *psz_port = ((void*)0);
    jstring jhost = ((void*)0), jport = ((void*)0);

    env = get_env(&b_detach);
    if (env == ((void*)0))
        return ((void*)0);


    jstring jkey = (*env)->NewStringUTF(env, "http.proxyHost");
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        jkey = ((void*)0);
    }
    if (jkey == ((void*)0))
        goto end;

    jhost = (*env)->CallStaticObjectMethod(env, fields.System.clazz,
                                           fields.System.getProperty, jkey);
    (*env)->DeleteLocalRef(env, jkey);
    if (jhost == ((void*)0))
        goto end;

    psz_host = (*env)->GetStringUTFChars(env, jhost, 0);

    if (psz_host == ((void*)0) || psz_host[0] == '\0')
        goto end;


    jkey = (*env)->NewStringUTF(env, "http.proxyPort");
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        jkey = ((void*)0);
    }
    if (jkey == ((void*)0))
        goto end;

    jport = (*env)->CallStaticObjectMethod(env, fields.System.clazz,
                                           fields.System.getProperty, jkey);
    (*env)->DeleteLocalRef(env, jkey);


    if (jport != ((void*)0))
    {
        psz_port = (*env)->GetStringUTFChars(env, jport, 0);
        if (psz_port != ((void*)0) && (psz_port[0] == '\0' || psz_port[0] == '0'))
        {
            (*env)->ReleaseStringUTFChars(env, jport, psz_port);
            psz_port = ((void*)0);
        }
    }


    if (asprintf(&psz_ret, "http://%s%s%s",
                 psz_host,
                 psz_port != ((void*)0) ? ":" : "",
                 psz_port != ((void*)0) ? psz_port : "") == -1)
        psz_ret = ((void*)0);

end:
    if (psz_host != ((void*)0))
        (*env)->ReleaseStringUTFChars(env, jhost, psz_host);
    if (jhost != ((void*)0))
        (*env)->DeleteLocalRef(env, jhost);
    if (psz_port != ((void*)0))
        (*env)->ReleaseStringUTFChars(env, jport, psz_port);
    if (jport != ((void*)0))
        (*env)->DeleteLocalRef(env, jport);
    release_env(b_detach);
    return psz_ret;
}
