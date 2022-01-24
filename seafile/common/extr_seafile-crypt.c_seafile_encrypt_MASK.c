#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int version; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ SeafileCrypt ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int const BLK_SIZE ; 
 int ENC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11 (char **data_out,
                 int *out_len,
                 const char *data_in,
                 const int in_len,
                 SeafileCrypt *crypt)
{
    *data_out = NULL;
    *out_len = -1;

    /* check validation */
    if ( data_in == NULL || in_len <= 0 || crypt == NULL) {
        FUNC10 ("Invalid params.\n");
        return -1;
    }

    EVP_CIPHER_CTX *ctx;
    int ret;
    int blks;

    /* Prepare CTX for encryption. */
    ctx = FUNC1 ();

    if (crypt->version == 2)
        ret = FUNC3 (ctx,
                                  FUNC7(), /* cipher mode */
                                  NULL, /* engine, NULL for default */
                                  crypt->key,  /* derived key */
                                  crypt->iv);  /* initial vector */
    else if (crypt->version == 1)
        ret = FUNC3 (ctx,
                                  FUNC5(), /* cipher mode */
                                  NULL, /* engine, NULL for default */
                                  crypt->key,  /* derived key */
                                  crypt->iv);  /* initial vector */
    else
        ret = FUNC3 (ctx,
                                  FUNC6(), /* cipher mode */
                                  NULL, /* engine, NULL for default */
                                  crypt->key,  /* derived key */
                                  crypt->iv);  /* initial vector */

    if (ret == ENC_FAILURE) {
        FUNC0 (ctx);
        return -1;
    }

    /* Allocating output buffer. */
    
    /*
      For EVP symmetric encryption, padding is always used __even if__
      data size is a multiple of block size, in which case the padding
      length is the block size. so we have the following:
    */
    
    blks = (in_len / BLK_SIZE) + 1;

    *data_out = (char *)FUNC9 (blks * BLK_SIZE);

    if (*data_out == NULL) {
        FUNC10 ("failed to allocate the output buffer.\n");
        goto enc_error;
    }                

    int update_len, final_len;

    /* Do the encryption. */
    ret = FUNC4 (ctx,
                             (unsigned char*)*data_out,
                             &update_len,
                             (unsigned char*)data_in,
                             in_len);

    if (ret == ENC_FAILURE)
        goto enc_error;


    /* Finish the possible partial block. */
    ret = FUNC2 (ctx,
                               (unsigned char*)*data_out + update_len,
                               &final_len);

    *out_len = update_len + final_len;

    /* out_len should be equal to the allocated buffer size. */
    if (ret == ENC_FAILURE || *out_len != (blks * BLK_SIZE))
        goto enc_error;
    
    FUNC0 (ctx);

    return 0;

enc_error:

    FUNC0 (ctx);

    *out_len = -1;

    if (*data_out != NULL)
        FUNC8 (*data_out);

    *data_out = NULL;

    return -1;
    
}