
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pf_unlockAndPost; scalar_t__ pf_lock2; scalar_t__ pf_lock; } ;
typedef TYPE_1__ NativeSurface ;
typedef scalar_t__ AndroidSurface_unlockAndPost ;
typedef scalar_t__ AndroidSurface_lock2 ;
typedef scalar_t__ AndroidSurface_lock ;


 int ANDROID_SYM_S_LOCK ;
 int ANDROID_SYM_S_LOCK2 ;
 int ANDROID_SYM_S_UNLOCK ;
 int RTLD_NOW ;
 int dlclose (void*) ;
 void* dlopen (char const*,int ) ;
 scalar_t__ dlsym (void*,int ) ;

__attribute__((used)) static inline void *
NativeSurface_Load(const char *psz_lib, NativeSurface *p_ns)
{
    void *p_lib = dlopen(psz_lib, RTLD_NOW);
    if (!p_lib)
        return ((void*)0);

    p_ns->pf_lock = (AndroidSurface_lock)(dlsym(p_lib, ANDROID_SYM_S_LOCK));
    p_ns->pf_lock2 = (AndroidSurface_lock2)(dlsym(p_lib, ANDROID_SYM_S_LOCK2));
    p_ns->pf_unlockAndPost =
        (AndroidSurface_unlockAndPost)(dlsym(p_lib, ANDROID_SYM_S_UNLOCK));

    if ((p_ns->pf_lock || p_ns->pf_lock2) && p_ns->pf_unlockAndPost)
        return p_lib;

    dlclose(p_lib);
    return ((void*)0);
}
