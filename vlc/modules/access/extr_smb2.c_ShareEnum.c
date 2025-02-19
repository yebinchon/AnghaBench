
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vlc_readdir_helper {int dummy; } ;
struct srvsvc_netshareinfo1 {int type; int name; } ;
struct TYPE_8__ {size_t count; struct srvsvc_netshareinfo1* array; } ;
struct srvsvc_netsharectr {TYPE_2__ ctr1; } ;
struct access_sys {TYPE_1__* share_enum; } ;
struct TYPE_9__ {struct access_sys* p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_7__ {struct srvsvc_netsharectr* ctr; } ;


 int AddItem (TYPE_3__*,struct vlc_readdir_helper*,int ,int ) ;
 int ITEM_TYPE_DIRECTORY ;

 int SHARE_TYPE_HIDDEN ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_3__*,int *) ;

__attribute__((used)) static int
ShareEnum(stream_t *access, input_item_node_t *p_node)
{
    struct access_sys *sys = access->p_sys;
    assert(sys->share_enum != ((void*)0));

    int ret = VLC_SUCCESS;
    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init(&rdh, access, p_node);

    struct srvsvc_netsharectr *ctr = sys->share_enum->ctr;
    for (uint32_t iinfo = 0;
         iinfo < ctr->ctr1.count && ret == VLC_SUCCESS; ++iinfo)
    {
       struct srvsvc_netshareinfo1 *info = &ctr->ctr1.array[iinfo];
       if (info->type & SHARE_TYPE_HIDDEN)
           continue;
       switch (info->type & 0x3)
       {
           case 128:
               ret = AddItem(access, &rdh, info->name, ITEM_TYPE_DIRECTORY);
               break;
       }
    }

    vlc_readdir_helper_finish(&rdh, ret == VLC_SUCCESS);
    return 0;
}
