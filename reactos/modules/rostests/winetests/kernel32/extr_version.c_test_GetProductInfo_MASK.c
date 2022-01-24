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
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 () ; 
 int PRODUCT_ENTERPRISE_S_N_EVALUATION ; 
 int PRODUCT_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int,...) ; 
 int FUNC3 (int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD product;
    DWORD res;
    DWORD table[] = {9,8,7,6,
                     7,0,0,0,
                     6,2,0,0,
                     6,1,2,0,
                     6,1,1,0,
                     6,1,0,2,
                     6,1,0,0,
                     6,0,3,0,
                     6,0,2,0,
                     6,0,1,5,
                     6,0,1,0,
                     6,0,0,0,
                     5,3,0,0,
                     5,2,0,0,
                     5,1,0,0,
                     5,0,0,0,
                     0};

    DWORD *entry = table;

    if (!&pGetProductInfo)
    {
        /* Not present before Vista */
        FUNC4("GetProductInfo() not available\n");
        return;
    }

    while (*entry)
    {
        /* SetLastError() / GetLastError(): value is untouched */
        product = 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC3(entry[0], entry[1], entry[2], entry[3], &product);

        if (entry[0] >= 6)
            FUNC2(res && (product > PRODUCT_UNDEFINED) && (product <= PRODUCT_ENTERPRISE_S_N_EVALUATION),
               "got %d and 0x%x (expected TRUE and a valid PRODUCT_* value)\n", res, product);
        else
            FUNC2(!res && !product && (FUNC0() == 0xdeadbeef),
               "got %d and 0x%x with 0x%x (expected FALSE and PRODUCT_UNDEFINED with LastError untouched)\n",
               res, product, FUNC0());

        entry+= 4;
    }

    /* NULL pointer is not a problem */
    FUNC1(0xdeadbeef);
    res = FUNC3(6, 1, 0, 0, NULL);
    FUNC2( (!res) && (FUNC0() == 0xdeadbeef),
        "got %d with 0x%x (expected FALSE with LastError untouched\n", res, FUNC0());
}