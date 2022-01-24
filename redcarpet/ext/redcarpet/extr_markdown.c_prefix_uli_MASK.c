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
typedef  char uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t) ; 

__attribute__((used)) static size_t
FUNC1(uint8_t *data, size_t size)
{
	size_t i = 0;

	if (i < size && data[i] == ' ') i++;
	if (i < size && data[i] == ' ') i++;
	if (i < size && data[i] == ' ') i++;

	if (i + 1 >= size ||
		(data[i] != '*' && data[i] != '+' && data[i] != '-') ||
		data[i + 1] != ' ')
		return 0;

	if (FUNC0(data + i, size - i))
		return 0;

	return i + 2;
}