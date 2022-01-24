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
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ mm_cipher_context_t ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(mm_cipher_context_t *ctx, void *buf, int buf_len)
{
    RC4_KEY rc4_key;

    FUNC1(&rc4_key, 16, ctx->key);
    FUNC0(&rc4_key, (size_t) buf_len, (const unsigned char *) buf,
        (unsigned char *) buf);
}