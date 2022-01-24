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
struct TYPE_4__ {char* Protseq; char* NetworkAddr; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  TYPE_1__* RPC_BINDING_HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline BOOL FUNC1(RPC_BINDING_HANDLE handle)
{
    RpcBinding *bind = handle;
    const char *protseq = bind->Protseq;
    const char *network_addr = bind->NetworkAddr;

    return (!FUNC0(protseq, "ncalrpc") ||
           (!FUNC0(protseq, "ncacn_np") &&
                (!network_addr || !FUNC0(network_addr, "."))));
}