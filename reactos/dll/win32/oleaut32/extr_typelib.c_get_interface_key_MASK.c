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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  REFGUID ;
typedef  int /*<<< orphan*/  InterfaceW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static WCHAR *FUNC3( REFGUID guid, WCHAR *buffer )
{
    static const WCHAR InterfaceW[] = {'I','n','t','e','r','f','a','c','e','\\',0};

    FUNC1( buffer, InterfaceW, sizeof(InterfaceW) );
    FUNC0( guid, buffer + FUNC2(buffer), 40 );
    return buffer;
}