
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t WORD ;


 int TRACE (char*,...) ;
 int * debug_type ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static inline void dump_types(const char* header, WORD *types, int start, int end)
{
    int i, len = 0;
    TRACE("%s:",header);
    for (i = start; i < end && len < 200; i++)
    {
        TRACE(" %s",debug_type[types[i]]);
        len += strlen(debug_type[types[i]])+1;
    }
    if (i != end)
        TRACE("...");
    TRACE("\n");
}
