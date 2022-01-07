
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char uint8_t ;
struct shmid_ds {size_t shm_segsz; } ;
struct TYPE_16__ {char* p_text; TYPE_7__* p_pic; } ;
struct TYPE_17__ {int b_active; TYPE_2__ data; int format; } ;
typedef TYPE_3__ overlay_t ;
struct TYPE_18__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_19__ {int b_updated; int overlays; } ;
typedef TYPE_5__ filter_sys_t ;
struct TYPE_20__ {scalar_t__ fourcc; int i_height; int i_width; int i_shmid; int i_id; } ;
typedef TYPE_6__ const commandparams_t ;
struct TYPE_21__ {TYPE_1__* p; scalar_t__ i_planes; int format; } ;
struct TYPE_15__ {size_t i_visible_lines; size_t i_visible_pitch; char* p_pixels; int i_pitch; } ;


 int IPC_STAT ;
 TYPE_3__* ListGet (int *,int ) ;
 int SHM_RDONLY ;
 scalar_t__ VLC_CODEC_TEXT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_6__ const*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int msg_Err (TYPE_4__*,char*,...) ;
 TYPE_7__* picture_New (scalar_t__,int,int,int,int) ;
 int picture_Release (TYPE_7__*) ;
 char* shmat (int ,int *,int ) ;
 int shmctl (int ,int ,struct shmid_ds*) ;
 int shmdt (char*) ;
 int video_format_Setup (int *,scalar_t__,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int exec_DataSharedMem( filter_t *p_filter,
                               const commandparams_t *p_params,
                               commandparams_t *p_results )
{
    VLC_UNUSED(p_params);
    VLC_UNUSED(p_results);

    msg_Err( p_filter, "system doesn't support shared memory" );
    return VLC_EGENERIC;

}
