#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_6__ {scalar_t__ server_public_key_len; int /*<<< orphan*/  crypted_random; } ;
struct TYPE_7__ {TYPE_1__ secure; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ SEC_CLIENT_RANDOM ; 
 scalar_t__ SEC_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(RDPCLIENT * This)
{
	uint32 length = This->secure.server_public_key_len + SEC_PADDING_SIZE;
	uint32 flags = SEC_CLIENT_RANDOM;
	STREAM s;

	s = FUNC4(This, flags, length + 4);

	FUNC0(s, length);
	FUNC1(s, This->secure.crypted_random, This->secure.server_public_key_len);
	FUNC2(s, SEC_PADDING_SIZE);

	FUNC3(s);
	FUNC5(This, s, flags);
}