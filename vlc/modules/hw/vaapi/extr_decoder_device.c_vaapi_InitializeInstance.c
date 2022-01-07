
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int (* vaapi_native_destroy_cb ) (int *) ;
struct vaapi_instance {int (* native_destroy_cb ) (int *) ;int * native; int dpy; } ;
typedef scalar_t__ VAStatus ;
typedef int * VANativeDisplay ;
typedef int VADisplay ;


 scalar_t__ VA_STATUS_SUCCESS ;
 struct vaapi_instance* malloc (int) ;
 int msg_Err (int *,char*,int ) ;
 scalar_t__ unlikely (int ) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaInitialize (int ,int*,int*) ;
 int vaTerminate (int ) ;

__attribute__((used)) static struct vaapi_instance *
vaapi_InitializeInstance(vlc_object_t *o, VADisplay dpy,
                             VANativeDisplay native,
                             vaapi_native_destroy_cb native_destroy_cb)
{
    int major = 0, minor = 0;
    VAStatus s = vaInitialize(dpy, &major, &minor);
    if (s != VA_STATUS_SUCCESS)
    {
        msg_Err(o, "vaInitialize: %s", vaErrorStr(s));
        goto error;
    }
    struct vaapi_instance *inst = malloc(sizeof(*inst));

    if (unlikely(inst == ((void*)0)))
        goto error;
    inst->dpy = dpy;
    inst->native = native;
    inst->native_destroy_cb = native_destroy_cb;

    return inst;
error:
    vaTerminate(dpy);
    if (native != ((void*)0) && native_destroy_cb != ((void*)0))
        native_destroy_cb(native);
    return ((void*)0);
}
