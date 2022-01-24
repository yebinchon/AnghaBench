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
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
#define  TYPE_ENUM 130 
#define  TYPE_STRUCT 129 
#define  TYPE_UNION 128 
 int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(const type_t *type)
{
    switch (FUNC0(type))
    {
    case TYPE_STRUCT:
    case TYPE_UNION:
    case TYPE_ENUM:
        return TRUE;
    default:
        return FALSE;
    }
}