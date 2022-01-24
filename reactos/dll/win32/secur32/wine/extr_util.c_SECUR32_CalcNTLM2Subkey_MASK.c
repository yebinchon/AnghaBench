#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  digest; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  TYPE_1__ MD5_CTX ;
typedef  unsigned char BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(const BYTE *session_key, const char *magic, PBYTE subkey)
{
    MD5_CTX ctx;

    FUNC1(&ctx);
    FUNC2(&ctx, session_key, 16);
    FUNC2(&ctx, (const unsigned char*)magic, FUNC3(magic)+1);
    FUNC0(&ctx);
    FUNC4(subkey, ctx.digest, 16);
}