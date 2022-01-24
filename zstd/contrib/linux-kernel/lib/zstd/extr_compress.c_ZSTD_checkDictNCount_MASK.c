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
typedef  unsigned int U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC1(short *normalizedCounter, unsigned dictMaxSymbolValue, unsigned maxSymbolValue)
{
	U32 s;
	if (dictMaxSymbolValue < maxSymbolValue)
		return FUNC0(dictionary_corrupted);
	for (s = 0; s <= maxSymbolValue; ++s) {
		if (normalizedCounter[s] == 0)
			return FUNC0(dictionary_corrupted);
	}
	return 0;
}