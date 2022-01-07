
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_STRING_TABLE (int ,int ,int ) ;
 int UnitType ;
 int _UNIT_TYPE_MAX ;
 int arg_no_legend ;
 int puts (char*) ;
 int unit_type ;

__attribute__((used)) static void help_types(void) {
        if (!arg_no_legend)
                puts("Available unit types:");

        DUMP_STRING_TABLE(unit_type, UnitType, _UNIT_TYPE_MAX);
}
