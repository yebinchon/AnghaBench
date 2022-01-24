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
typedef  void* UINT ;
struct TYPE_3__ {void* RelBase; scalar_t__ ImageBase; void* Size; } ;
typedef  TYPE_1__* PLIST_MEMBER ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NAMESIZE ; 
 int /*<<< orphan*/  cache ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int FUNC3(FILE *outFile, char *Line, int processed)
{
    static int state = 0;
    char Image[NAMESIZE];
    UINT Base;
    UINT Size;
    PLIST_MEMBER plm;

    int cnt;

    if ( processed ) return processed;
    if ( (cnt = FUNC2(Line," Base Size %5s", Image)) == 1 )
    {
        FUNC1(1, "Module relocate list:\n");
        state = 1;
        return 0;
    }
    switch (state)
    {
    case 1:
        if ( (cnt = FUNC2(Line,"%x %x %20s", &Base, &Size, Image)) == 3 )
        {
            if (( plm = FUNC0(&cache, Image) ))
            {
                plm->RelBase = Base;
                plm->Size = Size;
                FUNC1(1, "Relocated: %s %p -> %p\n", Image, (void*)plm->ImageBase, (void*)plm->RelBase);
            }
            return 0;
        }
        else
        {
            state = 0;
        }
        break;
    default:
        state = 0;
    }
    return 1;
}