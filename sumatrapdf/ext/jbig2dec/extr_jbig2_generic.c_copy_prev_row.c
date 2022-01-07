
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int stride; int * data; } ;
typedef TYPE_1__ Jbig2Image ;


 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
copy_prev_row(Jbig2Image *image, int row)
{
    if (!row) {

        memset(image->data, 0, image->stride);
    } else {

        uint8_t *src = image->data + (row - 1) * image->stride;

        memcpy(src + image->stride, src, image->stride);
    }
}
