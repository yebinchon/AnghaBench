
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int bzip2; scalar_t__ encoding; int gzip; int xz; } ;
typedef TYPE_1__ ImportCompress ;


 int BZ2_bzCompressEnd (int *) ;
 int BZ2_bzDecompressEnd (int *) ;
 scalar_t__ IMPORT_COMPRESS_BZIP2 ;
 scalar_t__ IMPORT_COMPRESS_GZIP ;
 scalar_t__ IMPORT_COMPRESS_UNKNOWN ;
 scalar_t__ IMPORT_COMPRESS_XZ ;
 int assert (TYPE_1__*) ;
 int deflateEnd (int *) ;
 int inflateEnd (int *) ;
 int lzma_end (int *) ;

void import_compress_free(ImportCompress *c) {
        assert(c);

        if (c->type == IMPORT_COMPRESS_XZ)
                lzma_end(&c->xz);
        else if (c->type == IMPORT_COMPRESS_GZIP) {
                if (c->encoding)
                        deflateEnd(&c->gzip);
                else
                        inflateEnd(&c->gzip);







        }

        c->type = IMPORT_COMPRESS_UNKNOWN;
}
