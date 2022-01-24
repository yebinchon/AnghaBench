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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 size_t FUNC2 (unsigned long,scalar_t__*,size_t) ; 
 scalar_t__* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 
 unsigned long FUNC5 (char const*,char**,int) ; 

__attribute__((used)) static uint8_t* FUNC6(const char* oid_str, size_t* ret_len)
{
	uint8_t* oid = NULL;
	unsigned long val1 = 0, val;
	const char *endp;
	int arcno = 0;
	size_t oid_len = 0;

	if ((oid_str == NULL) || (oid_str[0] == 0))
		return NULL;

	// We can safely assume that the encoded OID is shorter than the string.
	oid = FUNC3(1 + FUNC4(oid_str) + 2);
	if (oid == NULL)
		return NULL;

	do {
		arcno++;
		val = FUNC5(oid_str, (char**)&endp, 10);
		if (!FUNC1(*oid_str) || !(*endp == '.' || !*endp))
			goto err;
		if (*endp == '.')
			oid_str = endp + 1;

		if (arcno == 1) {
			if (val > 2)
				break; // Not allowed, error caught below.
			val1 = val;
		} else if (arcno == 2) {
			// Need to combine the first two arcs in one byte.
			if (val1 < 2) {
				if (val > 39)
					goto err;
				oid[oid_len++] = (uint8_t)(val1 * 40 + val);
			} else {
				val += 80;
				oid_len = FUNC2(val, oid, oid_len);
			}
		} else {
			oid_len = FUNC2(val, oid, oid_len);
		}
	} while (*endp == '.');

	// It is not possible to encode only the first arc.
	if (arcno == 1 || oid_len < 2 || oid_len > 254)
		goto err;

	*ret_len = oid_len;
	return oid;

err:
	FUNC0(oid);
	return NULL;
}