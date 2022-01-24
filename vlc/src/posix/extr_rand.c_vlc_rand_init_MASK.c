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
typedef  int uint8_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int* ikey ; 
 int* okey ; 
 scalar_t__ FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (void)
{
    uint8_t key[BLOCK_SIZE];

    /* Get non-predictible value as key for HMAC */
    int fd = FUNC2 ("/dev/urandom", O_RDONLY);
    if (fd == -1)
        return; /* Uho! */

    for (size_t i = 0; i < sizeof (key);)
    {
         ssize_t val = FUNC0 (fd, key + i, sizeof (key) - i);
         if (val > 0)
             i += val;
    }

    /* Precompute outer and inner keys for HMAC */
    for (size_t i = 0; i < sizeof (key); i++)
    {
        okey[i] = key[i] ^ 0x5c;
        ikey[i] = key[i] ^ 0x36;
    }

    FUNC1 (fd);
}