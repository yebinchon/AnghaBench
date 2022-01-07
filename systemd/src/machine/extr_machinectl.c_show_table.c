
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const Table ;


 int JSON_FORMAT_COLOR_AUTO ;
 scalar_t__ OUTPUT_MODE_IS_JSON (int ) ;
 scalar_t__ arg_legend ;
 int arg_output ;
 int assert (char const*) ;
 int log_error_errno (int,char*) ;
 int output_mode_to_json_format_flags (int ) ;
 int printf (char*,...) ;
 int table_get_rows (char const*) ;
 int table_print (char const*,int *) ;
 int table_print_json (char const*,int *,int) ;
 int table_set_header (char const*,scalar_t__) ;
 int table_set_sort (char const*,size_t,size_t) ;

__attribute__((used)) static int show_table(Table *table, const char *word) {
        int r;

        assert(table);
        assert(word);

        if (table_get_rows(table) > 1 || OUTPUT_MODE_IS_JSON(arg_output)) {
                r = table_set_sort(table, (size_t) 0, (size_t) -1);
                if (r < 0)
                        return log_error_errno(r, "Failed to sort table: %m");

                table_set_header(table, arg_legend);

                if (OUTPUT_MODE_IS_JSON(arg_output))
                        r = table_print_json(table, ((void*)0), output_mode_to_json_format_flags(arg_output) | JSON_FORMAT_COLOR_AUTO);
                else
                        r = table_print(table, ((void*)0));
                if (r < 0)
                        return log_error_errno(r, "Failed to show table: %m");
        }

        if (arg_legend) {
                if (table_get_rows(table) > 1)
                        printf("\n%zu %s listed.\n", table_get_rows(table) - 1, word);
                else
                        printf("No %s.\n", word);
        }

        return 0;
}
