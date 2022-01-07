
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {char* cookie; void* data; scalar_t__ release; scalar_t__ get; } ;
struct TYPE_6__ {int deadline; scalar_t__ dts; TYPE_1__ source; } ;
typedef TYPE_2__ imem_sys_t ;
typedef scalar_t__ imem_release_t ;
typedef scalar_t__ imem_get_t ;


 int ParseMRL (int *,char const*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int free (char*) ;
 int msg_Dbg (int *,char*,void*,void*,void*,char*) ;
 int msg_Err (int *,char*) ;
 scalar_t__ strtoll (char*,int *,int ) ;
 scalar_t__ strtoull (char*,int *,int ) ;
 void* var_InheritString (int *,char*) ;
 TYPE_2__* vlc_obj_calloc (int *,int,int) ;

__attribute__((used)) static int OpenCommon(vlc_object_t *object, imem_sys_t **sys_ptr, const char *psz_path)
{
    char *tmp;


    imem_sys_t *sys = vlc_obj_calloc(object, 1, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;


    tmp = var_InheritString(object, "imem-get");
    if (tmp)
        sys->source.get = (imem_get_t)(intptr_t)strtoll(tmp, ((void*)0), 0);
    free(tmp);

    tmp = var_InheritString(object, "imem-release");
    if (tmp)
        sys->source.release = (imem_release_t)(intptr_t)strtoll(tmp, ((void*)0), 0);
    free(tmp);

    if (!sys->source.get || !sys->source.release) {
        msg_Err(object, "Invalid get/release function pointers");
        return VLC_EGENERIC;
    }

    tmp = var_InheritString(object, "imem-data");
    if (tmp)
        sys->source.data = (void *)(uintptr_t)strtoull(tmp, ((void*)0), 0);
    free(tmp);



    if (*psz_path)
        ParseMRL(object, psz_path);

    sys->source.cookie = var_InheritString(object, "imem-cookie");

    msg_Dbg(object, "Using get(%p), release(%p), data(%p), cookie(%s)",
            (void *)sys->source.get, (void *)sys->source.release,
            sys->source.data,
            sys->source.cookie ? sys->source.cookie : "(null)");


    sys->dts = 0;
    sys->deadline = VLC_TICK_INVALID;

    *sys_ptr = sys;
    return VLC_SUCCESS;
}
