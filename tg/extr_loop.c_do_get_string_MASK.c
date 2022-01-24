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
struct tgl_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ one_string_len ; 
 int /*<<< orphan*/  one_string_num ; 
 char* one_string_prompt ; 
 int /*<<< orphan*/  one_string_type ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int read_one_string ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4 (struct tgl_state *TLS) {
  FUNC0 ();
  FUNC2 (one_string_type, one_string_num);  
  FUNC3 ("%s", one_string_prompt);
  FUNC1 (stdout);
  read_one_string = 1;
  one_string_len = 0;  
}