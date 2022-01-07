
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec; } ;
typedef TYPE_1__ sqliterk_pager ;


 int sqlcipher_codec_ctx_free (int *) ;
 int sqlcipher_deactivate () ;

void sqliterkCryptoFreeCodec(sqliterk_pager *pager)
{
    if (!pager->codec)
        return;
    sqlcipher_codec_ctx_free(&pager->codec);
    sqlcipher_deactivate();
}
