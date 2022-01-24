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
typedef  int PathPointType ;

/* Variables and functions */
#define  PathPointTypeBezier 130 
 int PathPointTypeCloseSubpath ; 
#define  PathPointTypeLine 129 
 int PathPointTypePathMarker ; 
 int PathPointTypePathTypeMask ; 
#define  PathPointTypeStart 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(PathPointType type, char * name)
{
    *name = '\0';

    switch(type & PathPointTypePathTypeMask){
        case PathPointTypeStart:
            FUNC0(name, "PathPointTypeStart");
            break;
        case PathPointTypeLine:
            FUNC0(name, "PathPointTypeLine");
            break;
        case PathPointTypeBezier:
            FUNC0(name, "PathPointTypeBezier");
            break;
        default:
            FUNC0(name, "Unknown type");
            return;
    }

    type &= ~PathPointTypePathTypeMask;
    if(type & ~((PathPointTypePathMarker | PathPointTypeCloseSubpath))){
        *name = '\0';
        FUNC0(name, "Unknown type");
        return;
    }

    if(type & PathPointTypePathMarker)
        FUNC0(name, " | PathPointTypePathMarker");
    if(type & PathPointTypeCloseSubpath)
        FUNC0(name, " | PathPointTypeCloseSubpath");
}