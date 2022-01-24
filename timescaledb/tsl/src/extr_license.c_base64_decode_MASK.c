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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(char *license_key)
{
	int raw_len = FUNC4(license_key);
	int decoded_buffer_len = FUNC2(raw_len) + 1;
	char *decoded = FUNC1(decoded_buffer_len);
	int decoded_len = FUNC3(license_key, raw_len, decoded);

	if (decoded_len < 0)
		return NULL;

	FUNC0(decoded_len < decoded_buffer_len);
	decoded[decoded_len] = '\0';
	return decoded;
}