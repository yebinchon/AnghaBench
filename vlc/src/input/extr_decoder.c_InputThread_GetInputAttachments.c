
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decoder_owner {int cbs_userdata; TYPE_1__* cbs; } ;
typedef int input_attachment_t ;
typedef int decoder_t ;
struct TYPE_2__ {int (* get_attachments ) (int *,int ***,int ) ;} ;


 int VLC_EGENERIC ;
 int VLC_ENOOBJ ;
 int VLC_SUCCESS ;
 struct decoder_owner* dec_get_owner (int *) ;
 int stub1 (int *,int ***,int ) ;

__attribute__((used)) static int InputThread_GetInputAttachments( decoder_t *p_dec,
                                       input_attachment_t ***ppp_attachment,
                                       int *pi_attachment )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    if (!p_owner->cbs || !p_owner->cbs->get_attachments)
        return VLC_ENOOBJ;

    int ret = p_owner->cbs->get_attachments(p_dec, ppp_attachment,
                                            p_owner->cbs_userdata);
    if (ret < 0)
        return VLC_EGENERIC;
    *pi_attachment = ret;
    return VLC_SUCCESS;
}
