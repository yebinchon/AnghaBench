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
typedef  int VARTYPE ;

/* Variables and functions */
#define  VT_BSTR 132 
#define  VT_DISPATCH 131 
#define  VT_SAFEARRAY 130 
#define  VT_UNKNOWN 129 
#define  VT_VARIANT 128 
 unsigned short FUNC0 (int) ; 

__attribute__((used)) static unsigned short FUNC1(VARTYPE vt)
{
    switch (vt)
    {
    case VT_BSTR:       return FUNC0( 0 );
    case VT_UNKNOWN:    return FUNC0( 1 );
    case VT_DISPATCH:   return FUNC0( 2 );
    case VT_VARIANT:    return FUNC0( 3 );
    case VT_SAFEARRAY:  return FUNC0( 4 );
    }
    return 0;
}