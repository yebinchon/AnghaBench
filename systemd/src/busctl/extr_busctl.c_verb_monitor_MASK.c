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
 scalar_t__ JSON_OFF ; 
 scalar_t__ arg_json ; 
 int /*<<< orphan*/  message_dump ; 
 int /*<<< orphan*/  message_json ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int argc, char **argv, void *userdata) {
        return FUNC0(argc, argv, arg_json != JSON_OFF ? message_json : message_dump);
}