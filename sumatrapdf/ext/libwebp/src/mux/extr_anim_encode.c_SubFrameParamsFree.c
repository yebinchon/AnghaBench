
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub_frame_lossy_; int sub_frame_ll_; } ;
typedef TYPE_1__ SubFrameParams ;


 int WebPPictureFree (int *) ;

__attribute__((used)) static void SubFrameParamsFree(SubFrameParams* const params) {
  WebPPictureFree(&params->sub_frame_ll_);
  WebPPictureFree(&params->sub_frame_lossy_);
}
