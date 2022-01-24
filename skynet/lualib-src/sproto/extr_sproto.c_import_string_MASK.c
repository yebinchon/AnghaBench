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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sproto {int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int SIZEOF_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const char *
FUNC3(struct sproto *s, const uint8_t * stream) {
	uint32_t sz = FUNC2(stream);
	char * buffer = FUNC1(&s->memory, sz+1);
	FUNC0(buffer, stream+SIZEOF_LENGTH, sz);
	buffer[sz] = '\0';
	return buffer;
}