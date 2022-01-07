
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char def_char; } ;
struct dbcs_table {TYPE_1__ info; } ;
typedef unsigned char WCHAR ;



__attribute__((used)) static inline WCHAR get_defchar_dbcs( const struct dbcs_table *table, const char *defchar )
{
    if (!defchar) return table->info.def_char;
    if (!defchar[1]) return (unsigned char)defchar[0];
    return ((unsigned char)defchar[0] << 8) | (unsigned char)defchar[1];
}
