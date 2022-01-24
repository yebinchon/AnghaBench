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
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int VP8_STATUS_NOT_ENOUGH_DATA ; 
 int VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char** kStatusMessages ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(const char* const in_file, int status) {
  FUNC0(stderr, "Decoding of %s failed.\n", (const W_CHAR*)in_file);
  FUNC1(stderr, "Status: %d", status);
  if (status >= VP8_STATUS_OK && status <= VP8_STATUS_NOT_ENOUGH_DATA) {
    FUNC1(stderr, "(%s)", kStatusMessages[status]);
  }
  FUNC1(stderr, "\n");
}