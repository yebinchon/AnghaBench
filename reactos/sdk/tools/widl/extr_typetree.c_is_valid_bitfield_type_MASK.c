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
#define  TYPE_BASIC 144 
#define  TYPE_BASIC_BYTE 143 
#define  TYPE_BASIC_CHAR 142 
#define  TYPE_BASIC_DOUBLE 141 
#define  TYPE_BASIC_ERROR_STATUS_T 140 
#define  TYPE_BASIC_FLOAT 139 
#define  TYPE_BASIC_HANDLE 138 
#define  TYPE_BASIC_HYPER 137 
#define  TYPE_BASIC_INT 136 
#define  TYPE_BASIC_INT16 135 
#define  TYPE_BASIC_INT32 134 
#define  TYPE_BASIC_INT3264 133 
#define  TYPE_BASIC_INT64 132 
#define  TYPE_BASIC_INT8 131 
#define  TYPE_BASIC_LONG 130 
#define  TYPE_BASIC_WCHAR 129 
#define  TYPE_ENUM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const type_t *type)
{
    switch (FUNC1(type))
    {
    case TYPE_ENUM:
        return TRUE;
    case TYPE_BASIC:
        switch (FUNC0(type))
        {
        case TYPE_BASIC_INT8:
        case TYPE_BASIC_INT16:
        case TYPE_BASIC_INT32:
        case TYPE_BASIC_INT64:
        case TYPE_BASIC_INT:
        case TYPE_BASIC_INT3264:
        case TYPE_BASIC_LONG:
        case TYPE_BASIC_CHAR:
        case TYPE_BASIC_HYPER:
        case TYPE_BASIC_BYTE:
        case TYPE_BASIC_WCHAR:
        case TYPE_BASIC_ERROR_STATUS_T:
            return TRUE;
        case TYPE_BASIC_FLOAT:
        case TYPE_BASIC_DOUBLE:
        case TYPE_BASIC_HANDLE:
            return FALSE;
        }
        return FALSE;
    default:
        return FALSE;
    }
}