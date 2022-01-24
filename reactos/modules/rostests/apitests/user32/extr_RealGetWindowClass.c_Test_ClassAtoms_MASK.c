#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* lpszClassName; } ;
typedef  TYPE_1__ WNDCLASSW ;
typedef  scalar_t__ ATOM ;

/* Variables and functions */
 char** ControlsList ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

void FUNC5()
{
    ATOM atom;
    int i;
    WNDCLASSW cls;

    // Initialize starting Atom number.
    atom = FUNC0(NULL, ControlsList[0], &cls);
    if (!atom)
    {
       FUNC3( "No reference Atom\n" );
       return;
    }

    FUNC4("First Control Class Atom 0x%x\n",atom);

    for (i = 0; i < 17; atom++ ,i++)
    {
        if (FUNC1(ControlsList[i],L"\0"))
        {
           ATOM test_atom = FUNC0(NULL, ControlsList[i], &cls);
           // Skip unregistered Classes.
           if (test_atom)
           {
              FUNC2(test_atom == atom, "%S class atom did not match %x:%x\n",ControlsList[i],test_atom,atom);
              FUNC2(!FUNC1(cls.lpszClassName,ControlsList[i]),"GetClassName returned incorrect name\n");
           }
        }
    }
}