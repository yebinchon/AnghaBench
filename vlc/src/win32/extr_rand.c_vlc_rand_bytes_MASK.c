#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  BCRYPT_ALG_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  BCRYPT_RNG_ALGORITHM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_DEF_PROV ; 
 int /*<<< orphan*/  MS_PRIMITIVE_PROVIDER ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 unsigned int FUNC8 () ; 

void FUNC9 (void *buf, size_t len)
{
#if VLC_WINSTORE_APP
    BCRYPT_ALG_HANDLE algo_handle;
    NTSTATUS ret = BCryptOpenAlgorithmProvider(&algo_handle, BCRYPT_RNG_ALGORITHM,
                                               MS_PRIMITIVE_PROVIDER, 0);
    if (BCRYPT_SUCCESS(ret))
    {
        BCryptGenRandom(algo_handle, buf, len, 0);
        BCryptCloseAlgorithmProvider(algo_handle, 0);
    }
#else
    size_t count = len;
    uint8_t *p_buf = (uint8_t *)buf;

    /* fill buffer with pseudo-random data */
    while (count > 0)
    {
        unsigned int val;
        val = FUNC8();
        if (count < sizeof (val))
        {
            FUNC7 (p_buf, &val, count);
            break;
        }

        FUNC7 (p_buf, &val, sizeof (val));
        count -= sizeof (val);
        p_buf += sizeof (val);
    }

    HCRYPTPROV hProv;
    /* acquire default encryption context */
    if( FUNC4(
        &hProv,                 // Variable to hold returned handle.
        NULL,                   // Use default key container.
        MS_DEF_PROV,            // Use default CSP.
        PROV_RSA_FULL,          // Type of provider to acquire.
        CRYPT_VERIFYCONTEXT) )  // Flag values
    {
        /* fill buffer with pseudo-random data, initial buffer content
           is used as auxiliary random seed */
        FUNC5(hProv, len, buf);
        FUNC6(hProv, 0);
    }
#endif /* VLC_WINSTORE_APP */
}