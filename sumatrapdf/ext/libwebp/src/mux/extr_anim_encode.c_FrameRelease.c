
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bitstream; } ;
struct TYPE_6__ {int bitstream; } ;
struct TYPE_8__ {TYPE_2__ key_frame_; TYPE_1__ sub_frame_; } ;
typedef TYPE_3__ EncodedFrame ;


 int WebPDataClear (int *) ;
 int memset (TYPE_3__* const,int ,int) ;

__attribute__((used)) static void FrameRelease(EncodedFrame* const encoded_frame) {
  if (encoded_frame != ((void*)0)) {
    WebPDataClear(&encoded_frame->sub_frame_.bitstream);
    WebPDataClear(&encoded_frame->key_frame_.bitstream);
    memset(encoded_frame, 0, sizeof(*encoded_frame));
  }
}
