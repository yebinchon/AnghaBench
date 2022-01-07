
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int * jthrowable ;
typedef int * jstring ;
struct TYPE_13__ {int toString; } ;
struct TYPE_10__ {int * toString; } ;
struct TYPE_12__ {TYPE_1__ Object; } ;
struct TYPE_11__ {char* (* GetStringUTFChars ) (TYPE_2__**,int *,int *) ;int (* ReleaseStringUTFChars ) (TYPE_2__**,int *,char const*) ;int (* ExceptionClear ) (TYPE_2__**) ;int * (* ExceptionOccurred ) (TYPE_2__**) ;} ;
typedef TYPE_2__* JNIEnv ;


 scalar_t__ CALL_OBJ (int *,int ) ;
 int DEL_LREF (int *) ;
 TYPE_9__ Object ;
 TYPE_7__ fields ;
 int msg_Err (int *,char*,...) ;
 int * stub1 (TYPE_2__**) ;
 int stub2 (TYPE_2__**) ;
 char* stub3 (TYPE_2__**,int *,int *) ;
 int stub4 (TYPE_2__**,int *,char const*) ;

__attribute__((used)) static bool
check_expection(vlc_keystore *p_keystore, JNIEnv *p_env)
{
    jthrowable jex = (*p_env)->ExceptionOccurred(p_env);
    if (jex != ((void*)0))
    {
        (*p_env)->ExceptionClear(p_env);
        if (fields.Object.toString != ((void*)0))
        {
            const char *psz_str = ((void*)0);
            jstring jstr = ((void*)0);

            jstr = (jstring) CALL_OBJ(jex, Object.toString);
            if (jstr != ((void*)0))
                psz_str = (*p_env)->GetStringUTFChars(p_env, jstr, ((void*)0));
            if (psz_str != ((void*)0))
            {
                msg_Err(p_keystore, "%s", psz_str);
                (*p_env)->ReleaseStringUTFChars(p_env, jstr, psz_str);
            }
            DEL_LREF(jstr);
        }
        else
            msg_Err(p_keystore, "unknown exception");
        DEL_LREF(jex);
        return 1;
    }
    return 0;
}
