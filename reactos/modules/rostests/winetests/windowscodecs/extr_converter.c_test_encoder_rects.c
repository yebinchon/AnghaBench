
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bitmap_data {int dummy; } ;
struct TYPE_3__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef TYPE_1__ WICRect ;


 int CLSID_WICTiffDecoder ;
 int CLSID_WICTiffEncoder ;
 int test_multi_encoder (struct bitmap_data const**,int *,struct bitmap_data const**,int *,TYPE_1__*,int *,char*,int *) ;
 struct bitmap_data testdata_24bppBGR ;

__attribute__((used)) static void test_encoder_rects(void)
{
    const struct bitmap_data *srcs[2];
    const struct bitmap_data *dsts[2];
    WICRect rc;

    srcs[0] = &testdata_24bppBGR;
    srcs[1] = ((void*)0);
    dsts[0] = &testdata_24bppBGR;
    dsts[1] = ((void*)0);

    rc.X = 0;
    rc.Y = 0;
    rc.Width = 32;
    rc.Height = 2;

    test_multi_encoder(srcs, &CLSID_WICTiffEncoder, dsts, &CLSID_WICTiffDecoder, &rc, ((void*)0), "test_encoder_rects full", ((void*)0));

    rc.Width = 0;
    test_multi_encoder(srcs, &CLSID_WICTiffEncoder, dsts, &CLSID_WICTiffDecoder, &rc, ((void*)0), "test_encoder_rects width=0", ((void*)0));

    rc.Width = -1;
    test_multi_encoder(srcs, &CLSID_WICTiffEncoder, dsts, &CLSID_WICTiffDecoder, &rc, ((void*)0), "test_encoder_rects width=-1", ((void*)0));

    rc.Width = 32;
    rc.Height = 0;
    test_multi_encoder(srcs, &CLSID_WICTiffEncoder, dsts, &CLSID_WICTiffDecoder, &rc, ((void*)0), "test_encoder_rects height=0", ((void*)0));

    rc.Height = -1;
    test_multi_encoder(srcs, &CLSID_WICTiffEncoder, dsts, &CLSID_WICTiffDecoder, &rc, ((void*)0), "test_encoder_rects height=-1", ((void*)0));
}
