
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* writer ) (int const*,int,TYPE_1__ const* const) ;} ;
typedef TYPE_1__ WebPPicture ;


 int stub1 (int const*,int,TYPE_1__ const* const) ;

__attribute__((used)) static int PutPaddingByte(const WebPPicture* const pic) {
  const uint8_t pad_byte[1] = { 0 };
  return !!pic->writer(pad_byte, 1, pic);
}
