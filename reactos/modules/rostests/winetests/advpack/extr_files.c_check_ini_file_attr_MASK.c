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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FILE_ATTRIBUTE_HIDDEN ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2(LPSTR filename)
{
    BOOL ret;
    DWORD expected = FILE_ATTRIBUTE_HIDDEN | FILE_ATTRIBUTE_READONLY;
    DWORD attr = FUNC0(filename);

    ret = (attr & expected) && (attr != INVALID_FILE_ATTRIBUTES);
    FUNC1(filename, FILE_ATTRIBUTE_NORMAL);

    return ret;
}