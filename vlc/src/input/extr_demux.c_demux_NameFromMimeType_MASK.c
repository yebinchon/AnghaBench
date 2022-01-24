#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* member_0; char* member_1; char const* name; } ;
typedef  TYPE_1__ demux_mapping ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(const char *mime)
{
    static demux_mapping types[] =
    {   /* Must be sorted in ascending ASCII order */
        { "audio/aac",           "m4a"     },
        { "audio/aacp",          "m4a"     },
        { "audio/mpeg",          "mp3"     },
        //{ "video/MP1S",          "es,mpgv" }, !b_force
        { "video/dv",            "rawdv"   },
        { "video/MP2P",          "ps"      },
        { "video/MP2T",          "ts"      },
        { "video/nsa",           "nsv"     },
        { "video/nsv",           "nsv"     },
    };
    demux_mapping *type = FUNC1( mime, types, FUNC0( types ) );
    return (type != NULL) ? type->name : "any";
}