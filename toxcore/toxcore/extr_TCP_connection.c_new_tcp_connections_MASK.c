#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  proxy_info; int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
typedef  int /*<<< orphan*/  TCP_Proxy_Info ;
typedef  TYPE_1__ TCP_Connections ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

TCP_Connections *FUNC3(const uint8_t *secret_key, TCP_Proxy_Info *proxy_info)
{
    if (secret_key == NULL)
        return NULL;

    TCP_Connections *temp = FUNC0(1, sizeof(TCP_Connections));

    if (temp == NULL)
        return NULL;

    FUNC2(temp->self_secret_key, secret_key, crypto_box_SECRETKEYBYTES);
    FUNC1(temp->self_public_key, temp->self_secret_key);
    temp->proxy_info = *proxy_info;

    return temp;
}