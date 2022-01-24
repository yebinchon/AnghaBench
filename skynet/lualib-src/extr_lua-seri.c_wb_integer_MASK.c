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
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  v64 ;
typedef  int /*<<< orphan*/  v32 ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct write_block {int dummy; } ;
typedef  int lua_Integer ;
typedef  int int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int TYPE_NUMBER ; 
 int /*<<< orphan*/  TYPE_NUMBER_BYTE ; 
 int /*<<< orphan*/  TYPE_NUMBER_DWORD ; 
 int /*<<< orphan*/  TYPE_NUMBER_QWORD ; 
 int /*<<< orphan*/  TYPE_NUMBER_WORD ; 
 int /*<<< orphan*/  TYPE_NUMBER_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct write_block*,int*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct write_block *wb, lua_Integer v) {
	int type = TYPE_NUMBER;
	if (v == 0) {
		uint8_t n = FUNC0(type , TYPE_NUMBER_ZERO);
		FUNC1(wb, &n, 1);
	} else if (v != (int32_t)v) {
		uint8_t n = FUNC0(type , TYPE_NUMBER_QWORD);
		int64_t v64 = v;
		FUNC1(wb, &n, 1);
		FUNC1(wb, &v64, sizeof(v64));
	} else if (v < 0) {
		int32_t v32 = (int32_t)v;
		uint8_t n = FUNC0(type , TYPE_NUMBER_DWORD);
		FUNC1(wb, &n, 1);
		FUNC1(wb, &v32, sizeof(v32));
	} else if (v<0x100) {
		uint8_t n = FUNC0(type , TYPE_NUMBER_BYTE);
		FUNC1(wb, &n, 1);
		uint8_t byte = (uint8_t)v;
		FUNC1(wb, &byte, sizeof(byte));
	} else if (v<0x10000) {
		uint8_t n = FUNC0(type , TYPE_NUMBER_WORD);
		FUNC1(wb, &n, 1);
		uint16_t word = (uint16_t)v;
		FUNC1(wb, &word, sizeof(word));
	} else {
		uint8_t n = FUNC0(type , TYPE_NUMBER_DWORD);
		FUNC1(wb, &n, 1);
		uint32_t v32 = (uint32_t)v;
		FUNC1(wb, &v32, sizeof(v32));
	}
}