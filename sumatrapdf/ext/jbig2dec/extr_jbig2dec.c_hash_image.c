
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hash_ctx; } ;
typedef TYPE_1__ jbig2dec_params_t ;
struct TYPE_6__ {unsigned int stride; unsigned int height; int data; } ;
typedef TYPE_2__ Jbig2Image ;


 int SHA1_Update (int ,int ,unsigned int) ;

__attribute__((used)) static void
hash_image(jbig2dec_params_t *params, Jbig2Image *image)
{
    unsigned int N = image->stride * image->height;

    SHA1_Update(params->hash_ctx, image->data, N);
}
