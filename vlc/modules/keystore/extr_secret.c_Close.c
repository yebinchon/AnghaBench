
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ vlc_keystore ;
typedef int SecretService ;


 int g_object_unref (int *) ;
 int secret_service_disconnect () ;

__attribute__((used)) static void
Close(vlc_object_t *p_this)
{
    vlc_keystore *p_keystore = (vlc_keystore *)p_this;
    SecretService *p_ss = (SecretService *) p_keystore->p_sys;
    g_object_unref(p_ss);
    secret_service_disconnect();
}
