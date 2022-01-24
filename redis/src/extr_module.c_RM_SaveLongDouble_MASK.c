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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ error; } ;
typedef  TYPE_1__ RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  LD_STR_HEX ; 
 int MAX_LONG_DOUBLE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,size_t) ; 
 size_t FUNC1 (char*,int,long double,int /*<<< orphan*/ ) ; 

void FUNC2(RedisModuleIO *io, long double value) {
    if (io->error) return;
    char buf[MAX_LONG_DOUBLE_CHARS];
    /* Long double has different number of bits in different platforms, so we
     * save it as a string type. */
    size_t len = FUNC1(buf,sizeof(buf),value,LD_STR_HEX);
    FUNC0(io,buf,len+1); /* len+1 for '\0' */
}