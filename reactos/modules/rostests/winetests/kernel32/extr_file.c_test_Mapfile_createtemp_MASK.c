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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 

__attribute__((used)) static int FUNC3(HANDLE *handle)
{
    FUNC2(filename,FILE_ATTRIBUTE_NORMAL);
    FUNC1(filename);
    *handle = FUNC0(filename, GENERIC_READ|GENERIC_WRITE, 0, 0,
                         CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (*handle != INVALID_HANDLE_VALUE) {

        return 1;
    }

    return 0;
}