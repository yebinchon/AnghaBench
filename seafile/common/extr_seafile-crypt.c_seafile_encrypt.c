
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int iv; int key; } ;
typedef TYPE_1__ SeafileCrypt ;
typedef int EVP_CIPHER_CTX ;


 int const BLK_SIZE ;
 int ENC_FAILURE ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptInit_ex (int *,int ,int *,int ,int ) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,int const) ;
 int EVP_aes_128_cbc () ;
 int EVP_aes_128_ecb () ;
 int EVP_aes_256_cbc () ;
 int g_free (char*) ;
 scalar_t__ g_malloc (int) ;
 int seaf_warning (char*) ;

int
seafile_encrypt (char **data_out,
                 int *out_len,
                 const char *data_in,
                 const int in_len,
                 SeafileCrypt *crypt)
{
    *data_out = ((void*)0);
    *out_len = -1;


    if ( data_in == ((void*)0) || in_len <= 0 || crypt == ((void*)0)) {
        seaf_warning ("Invalid params.\n");
        return -1;
    }

    EVP_CIPHER_CTX *ctx;
    int ret;
    int blks;


    ctx = EVP_CIPHER_CTX_new ();

    if (crypt->version == 2)
        ret = EVP_EncryptInit_ex (ctx,
                                  EVP_aes_256_cbc(),
                                  ((void*)0),
                                  crypt->key,
                                  crypt->iv);
    else if (crypt->version == 1)
        ret = EVP_EncryptInit_ex (ctx,
                                  EVP_aes_128_cbc(),
                                  ((void*)0),
                                  crypt->key,
                                  crypt->iv);
    else
        ret = EVP_EncryptInit_ex (ctx,
                                  EVP_aes_128_ecb(),
                                  ((void*)0),
                                  crypt->key,
                                  crypt->iv);

    if (ret == ENC_FAILURE) {
        EVP_CIPHER_CTX_free (ctx);
        return -1;
    }
    blks = (in_len / BLK_SIZE) + 1;

    *data_out = (char *)g_malloc (blks * BLK_SIZE);

    if (*data_out == ((void*)0)) {
        seaf_warning ("failed to allocate the output buffer.\n");
        goto enc_error;
    }

    int update_len, final_len;


    ret = EVP_EncryptUpdate (ctx,
                             (unsigned char*)*data_out,
                             &update_len,
                             (unsigned char*)data_in,
                             in_len);

    if (ret == ENC_FAILURE)
        goto enc_error;



    ret = EVP_EncryptFinal_ex (ctx,
                               (unsigned char*)*data_out + update_len,
                               &final_len);

    *out_len = update_len + final_len;


    if (ret == ENC_FAILURE || *out_len != (blks * BLK_SIZE))
        goto enc_error;

    EVP_CIPHER_CTX_free (ctx);

    return 0;

enc_error:

    EVP_CIPHER_CTX_free (ctx);

    *out_len = -1;

    if (*data_out != ((void*)0))
        g_free (*data_out);

    *data_out = ((void*)0);

    return -1;

}
