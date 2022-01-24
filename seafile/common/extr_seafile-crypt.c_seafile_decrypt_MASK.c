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
 int DEC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int const) ; 
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

    /* Check validation. Because padding is always used, in_len must
     * be a multiple of BLK_SIZE */
    if ( data_in == NULL || in_len <= 0 || in_len % BLK_SIZE != 0 ||
         crypt == NULL) {

        FUNC10 ("Invalid param(s).\n");
        return -1;
    }

    EVP_CIPHER_CTX *ctx;
    int ret;

    /* Prepare CTX for decryption. */
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

    if (ret == DEC_FAILURE) {
        FUNC0 (ctx);
        return -1;
    }

    /* Allocating output buffer. */
    
    *data_out = (char *)FUNC9 (in_len);

    if (*data_out == NULL) {
        FUNC10 ("failed to allocate the output buffer.\n");
        goto dec_error;
    }                

    int update_len, final_len;

    /* Do the decryption. */
    ret = FUNC4 (ctx,
                             (unsigned char*)*data_out,
                             &update_len,
                             (unsigned char*)data_in,
                             in_len);

    if (ret == DEC_FAILURE)
        goto dec_error;


    /* Finish the possible partial block. */
    ret = FUNC2 (ctx,
                               (unsigned char*)*data_out + update_len,
                               &final_len);

    *out_len = update_len + final_len;

    /* out_len should be smaller than in_len. */
    if (ret == DEC_FAILURE || *out_len > in_len)
        goto dec_error;

    FUNC0 (ctx);
    
    return 0;

dec_error:

    FUNC0 (ctx);

    *out_len = -1;
    if (*data_out != NULL)
        FUNC8 (*data_out);

    *data_out = NULL;

    return -1;
    
}