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
struct instance {int /*<<< orphan*/  conf_filename; } ;
struct conf {int dummy; } ;

/* Variables and functions */
 struct conf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct conf*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct instance *nci)
{
    struct conf *cf;

    cf = FUNC0(nci->conf_filename);
    if (cf == NULL) {
        FUNC2("nutcracker: configuration file '%s' syntax is invalid",
                   nci->conf_filename);
        return false;
    }

    FUNC1(cf);

    FUNC2("nutcracker: configuration file '%s' syntax is ok",
               nci->conf_filename);
    return true;
}