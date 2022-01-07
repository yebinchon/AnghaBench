
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_4__ {int type; int encoding; int bzip2; int gzip; int xz; } ;
typedef int ImportCompressType ;
typedef TYPE_1__ ImportCompress ;


 int BZ2_bzCompressInit (int *,int,int ,int ) ;
 int BZ_OK ;
 int EIO ;
 int EOPNOTSUPP ;




 int LZMA_CHECK_CRC64 ;
 int LZMA_OK ;
 int LZMA_PRESET_DEFAULT ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_OK ;
 int assert (TYPE_1__*) ;
 int deflateInit2 (int *,int ,int ,int,int,int ) ;
 int lzma_easy_encoder (int *,int ,int ) ;

int import_compress_init(ImportCompress *c, ImportCompressType t) {
        int r;

        assert(c);

        switch (t) {

        case 128: {
                lzma_ret xzr;

                xzr = lzma_easy_encoder(&c->xz, LZMA_PRESET_DEFAULT, LZMA_CHECK_CRC64);
                if (xzr != LZMA_OK)
                        return -EIO;

                c->type = 128;
                break;
        }

        case 130:
                r = deflateInit2(&c->gzip, Z_DEFAULT_COMPRESSION, Z_DEFLATED, 15 + 16, 8, Z_DEFAULT_STRATEGY);
                if (r != Z_OK)
                        return -EIO;

                c->type = 130;
                break;
        case 129:
                c->type = 129;
                break;

        default:
                return -EOPNOTSUPP;
        }

        c->encoding = 1;
        return 0;
}
