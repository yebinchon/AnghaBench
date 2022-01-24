#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ debug; } ;
struct TYPE_3__ {char* (* lookup ) (char const*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* (* open ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  includepath ; 
 int /*<<< orphan*/  nincludepath ; 
 TYPE_2__ pp_status ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int) ; 
 TYPE_1__* wpp_callbacks ; 

void *FUNC4(const char *name, int type, const char *parent_name, char **newpath)
{
    char *path;
    void *fp;

    if (!(path = wpp_callbacks->lookup(name, type, parent_name, includepath,
                                       nincludepath))) return NULL;
    fp = wpp_callbacks->open(path, type);

    if (fp)
    {
        if (pp_status.debug)
            FUNC1("Going to include <%s>\n", path);
        if (newpath) *newpath = path;
        else FUNC0( path );
        return fp;
    }
    FUNC0( path );
    return NULL;
}