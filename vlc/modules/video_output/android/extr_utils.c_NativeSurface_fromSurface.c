
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int libs ;
typedef int jobject ;
struct TYPE_5__ {void* p_dl_handle; void* p_surface_handle; } ;
typedef TYPE_1__ NativeSurface ;
typedef int JNIEnv ;
typedef int ANativeWindow ;


 void* NativeSurface_Load (char const*,TYPE_1__*) ;
 void* NativeSurface_getHandle (int *,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static ANativeWindow*
NativeSurface_fromSurface(JNIEnv *p_env, jobject jsurf)
{
    void *p_surface_handle;
    NativeSurface *p_ns;

    static const char *libs[] = {
        "libsurfaceflinger_client.so",
        "libgui.so",
        "libui.so"
    };
    p_surface_handle = NativeSurface_getHandle(p_env, jsurf);
    if (!p_surface_handle)
        return ((void*)0);
    p_ns = malloc(sizeof(NativeSurface));
    if (!p_ns)
        return ((void*)0);
    p_ns->p_surface_handle = p_surface_handle;

    for (size_t i = 0; i < sizeof(libs) / sizeof(*libs); i++)
    {
        void *p_dl_handle = NativeSurface_Load(libs[i], p_ns);
        if (p_dl_handle)
        {
            p_ns->p_dl_handle = p_dl_handle;
            return (ANativeWindow*)p_ns;
        }
    }
    free(p_ns);
    return ((void*)0);
}
