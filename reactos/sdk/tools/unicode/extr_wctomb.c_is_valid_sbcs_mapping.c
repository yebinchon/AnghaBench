
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ def_char; } ;
struct sbcs_table {scalar_t__* cp2uni; TYPE_1__ info; } ;
typedef scalar_t__ WCHAR ;


 int WC_NO_BEST_FIT_CHARS ;

__attribute__((used)) static inline int is_valid_sbcs_mapping( const struct sbcs_table *table, int flags,
                                         WCHAR wch, unsigned char ch )
{
    if ((flags & WC_NO_BEST_FIT_CHARS) || ch == (unsigned char)table->info.def_char)
        return (table->cp2uni[ch] == wch);
    return 1;
}
