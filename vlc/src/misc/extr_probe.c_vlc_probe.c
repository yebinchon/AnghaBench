
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t count; int * list; } ;
typedef TYPE_1__ vlc_probe_t ;
typedef int vlc_object_t ;
typedef int module_t ;


 int * module_need (TYPE_1__*,char const*,int *,int) ;
 int module_unneed (TYPE_1__*,int *) ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

void *vlc_probe (vlc_object_t *obj,
                 const char *capability, size_t *restrict pcount)
{
    vlc_probe_t *probe = vlc_custom_create (obj, sizeof(*probe), "probe");
    if (unlikely(probe == ((void*)0)))
    {
        *pcount = 0;
        return ((void*)0);
    }
    probe->list = ((void*)0);
    probe->count = 0;

    module_t *mod = module_need (probe, capability, ((void*)0), 0);
    if (mod != ((void*)0))
    {
        msg_Warn (probe, "probing halted");
        module_unneed (probe, mod);
    }

    void *ret = probe->list;
    *pcount = probe->count;
    vlc_object_delete(probe);
    return ret;
}
