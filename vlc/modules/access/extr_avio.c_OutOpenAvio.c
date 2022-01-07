
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {TYPE_2__* p_sys; int pf_seek; int pf_control; int pf_write; int psz_path; int p_cfg; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_11__ {int * context; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_12__ {int key; } ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVIO_FLAG_WRITE ;
 int AVUNERROR (int) ;
 int AV_DICT_IGNORE_SUFFIX ;
 int OutControl ;
 int OutSeek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int Write ;
 int av_dict_free (int **) ;
 TYPE_3__* av_dict_get (int *,char*,TYPE_3__*,int ) ;
 int avio_open2 (int **,int ,int ,int *,int **) ;
 int config_ChainParse (TYPE_1__*,char*,int ,int ) ;
 int errno ;
 int free (char*) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int ppsz_sout_options ;
 char* var_InheritString (TYPE_1__*,char*) ;
 int vlc_av_get_options (char*,int **) ;
 int vlc_init_avformat (int *) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;

int OutOpenAvio(vlc_object_t *object)
{
    sout_access_out_t *access = (sout_access_out_t*)object;

    config_ChainParse( access, "sout-avio-", ppsz_sout_options, access->p_cfg );

    sout_access_out_sys_t *sys = vlc_obj_malloc(object, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    sys->context = ((void*)0);


    vlc_init_avformat(object);

    if (!access->psz_path)
        return VLC_EGENERIC;

    int ret;
    AVDictionary *options = ((void*)0);
    char *psz_opts = var_InheritString(access, "sout-avio-options");
    if (psz_opts) {
        vlc_av_get_options(psz_opts, &options);
        free(psz_opts);
    }
    ret = avio_open2(&sys->context, access->psz_path, AVIO_FLAG_WRITE,
                     ((void*)0), &options);
    AVDictionaryEntry *t = ((void*)0);
    while ((t = av_dict_get(options, "", t, AV_DICT_IGNORE_SUFFIX)))
        msg_Err( access, "unknown option \"%s\"", t->key );
    av_dict_free(&options);
    if (ret < 0) {
        errno = AVUNERROR(ret);
        msg_Err(access, "Failed to open %s", access->psz_path);
        return VLC_EGENERIC;
    }

    access->pf_write = Write;
    access->pf_control = OutControl;
    access->pf_seek = OutSeek;
    access->p_sys = sys;

    return VLC_SUCCESS;
}
