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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 

__attribute__((used)) static inline BOOL FUNC1(const WCHAR *file_name)
{
    return FUNC0(file_name) != INVALID_FILE_ATTRIBUTES;
}