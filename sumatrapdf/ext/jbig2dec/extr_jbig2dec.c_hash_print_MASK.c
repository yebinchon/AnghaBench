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
struct TYPE_3__ {int /*<<< orphan*/  hash_ctx; } ;
typedef  TYPE_1__ jbig2dec_params_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char) ; 

__attribute__((used)) static void
FUNC3(jbig2dec_params_t *params, FILE *out)
{
    unsigned char md[SHA1_DIGEST_SIZE];
    char digest[2 * SHA1_DIGEST_SIZE + 1];
    int i;

    FUNC0(params->hash_ctx, md);
    for (i = 0; i < SHA1_DIGEST_SIZE; i++) {
        FUNC2(&(digest[2 * i]), 3, "%02x", md[i]);
    }
    FUNC1(out, "%s", digest);
}