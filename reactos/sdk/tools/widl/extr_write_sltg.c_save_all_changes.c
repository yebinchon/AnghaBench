
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sltg_typelib {TYPE_2__* typelib; } ;
typedef int library_block_start ;
struct TYPE_4__ {int cval; } ;
typedef TYPE_1__ expr_t ;
struct TYPE_5__ {int attrs; } ;
typedef int SIZE_T ;


 int ATTR_ID ;
 int add_output_to_resources (char*,char*) ;
 int chat (char*,int) ;
 int flush_output_buffer (int ) ;
 TYPE_1__* get_attrp (int ,int ) ;
 scalar_t__ output_buffer ;
 int output_buffer_pos ;
 int output_typelib_regscript (TYPE_2__*) ;
 int put_data (int*,int) ;
 int sltg_write_header (struct sltg_typelib*,int*) ;
 int sltg_write_helpstrings (struct sltg_typelib*) ;
 int sltg_write_nametable (struct sltg_typelib*) ;
 int sltg_write_remainder () ;
 int sltg_write_typeinfo (struct sltg_typelib*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strendswith (int ,char*) ;
 int typelib_name ;

__attribute__((used)) static void save_all_changes(struct sltg_typelib *typelib)
{
    int library_block_start;
    int *name_table_offset;

    sltg_write_header(typelib, &library_block_start);
    sltg_write_typeinfo(typelib);

    name_table_offset = (int *)(output_buffer + output_buffer_pos);
    chat("name_table_offset = %#lx\n", (SIZE_T)output_buffer_pos);
    put_data(&library_block_start, sizeof(library_block_start));

    sltg_write_helpstrings(typelib);

    *name_table_offset = output_buffer_pos - library_block_start;
    chat("*name_table_offset = %#x\n", *name_table_offset);

    sltg_write_nametable(typelib);
    sltg_write_remainder();

    if (strendswith(typelib_name, ".res"))
    {
        char typelib_id[13] = "#1";

        expr_t *expr = get_attrp(typelib->typelib->attrs, ATTR_ID);
        if (expr)
            sprintf(typelib_id, "#%d", expr->cval);
        add_output_to_resources("TYPELIB", typelib_id);
        output_typelib_regscript(typelib->typelib);
    }
    else flush_output_buffer(typelib_name);
}
