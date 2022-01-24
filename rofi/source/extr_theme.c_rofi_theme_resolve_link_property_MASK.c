#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ properties; } ;
struct TYPE_7__ {char* name; TYPE_3__* ref; TYPE_3__* def_value; } ;
struct TYPE_8__ {TYPE_1__ link; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ value; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ Property ;

/* Variables and functions */
 scalar_t__ P_LINK ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 
 TYPE_3__* FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_5__* rofi_theme ; 

__attribute__((used)) static void FUNC4 ( Property *p, int depth )
{
    // Set name, remove '@' prefix.
    const char *name = p->value.link.name;// + (*(p->value.link.name)== '@'?1:0;
    FUNC2 ( "Resolving link to %s", p->value.link.name);
    if ( depth > 20 ) {
        FUNC3 ( "Found more then 20 redirects for property. Stopping." );
        p->value.link.ref = p;
        return;
    }

    if ( rofi_theme->properties && FUNC0 ( rofi_theme->properties, name ) ) {
        Property *pr = FUNC1 ( rofi_theme->properties, name );
        FUNC2 ("Resolving link %s found: %s", p->value.link.name, pr->name);
        if ( pr->type == P_LINK ) {
            if ( pr->value.link.ref == NULL ) {
                FUNC4 ( pr, depth + 1 );
            }
            if ( pr->value.link.ref != pr ) {
                p->value.link.ref = pr->value.link.ref;
                return;
            }
        }
        else {
            p->value.link.ref = pr;
            return;
        }
    }
    // No found and we have default value.
    if ( p->value.link.def_value ){
        p->value.link.ref = p->value.link.def_value;
        return;
    }

    // No found, set ref to self.
    p->value.link.ref = p;
}