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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,char) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char FUNC5 (vlc_object_t *obj)
{
    char pol;
    char *polstr = FUNC4 (obj, "dvb-polarization");
    if (polstr != NULL)
    {
        pol = *polstr;
        FUNC0 (polstr);
        if (FUNC2(pol >= 'a' && pol <= 'z'))
            pol -= 'a' - 'A';
        return pol;
    }

    /* Backward compatibility with VLC for Linux < 1.2 */
    unsigned voltage = FUNC3 (obj, "dvb-voltage");
    switch (voltage)
    {
        case 13:  pol = 'V'; break;
        case 18:  pol = 'H'; break;
        default:  return 0;
    }

    FUNC1 (obj, "\"voltage=%u\" option is obsolete. "
                   "Use \"polarization=%c\" instead.", voltage, pol);
    return pol;
}