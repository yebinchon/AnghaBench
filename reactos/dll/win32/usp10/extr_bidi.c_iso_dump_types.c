
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; TYPE_1__* item; } ;
struct TYPE_4__ {size_t* pcls; } ;
typedef TYPE_2__ IsolatedRun ;


 int TRACE (char*,...) ;
 int * debug_type ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static inline void iso_dump_types(const char* header, IsolatedRun *iso_run)
{
    int i, len = 0;
    TRACE("%s:",header);
    TRACE("[ ");
    for (i = 0; i < iso_run->length && len < 200; i++)
    {
        TRACE(" %s",debug_type[*iso_run->item[i].pcls]);
        len += strlen(debug_type[*iso_run->item[i].pcls])+1;
    }
    if (i != iso_run->length)
        TRACE("...");
    TRACE(" ]\n");
}
