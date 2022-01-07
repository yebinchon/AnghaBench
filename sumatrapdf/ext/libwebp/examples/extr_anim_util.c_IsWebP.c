
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int bytes; } ;
typedef TYPE_1__ WebPData ;


 scalar_t__ WebPGetInfo (int ,int ,int *,int *) ;

__attribute__((used)) static int IsWebP(const WebPData* const webp_data) {
  return (WebPGetInfo(webp_data->bytes, webp_data->size, ((void*)0), ((void*)0)) != 0);
}
