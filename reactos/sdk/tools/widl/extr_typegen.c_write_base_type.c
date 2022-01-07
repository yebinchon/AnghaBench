
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 scalar_t__ TYPE_BASIC ;
 scalar_t__ TYPE_ENUM ;
 unsigned char get_basic_fc_signed (int const*) ;
 unsigned char get_enum_fc (int const*) ;
 int print_file (int *,int,char*,unsigned char,int ) ;
 int string_of_type (unsigned char) ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static int write_base_type(FILE *file, const type_t *type, unsigned int *typestring_offset)
{
    unsigned char fc;

    if (type_get_type(type) == TYPE_BASIC)
        fc = get_basic_fc_signed(type);
    else if (type_get_type(type) == TYPE_ENUM)
        fc = get_enum_fc(type);
    else
        return 0;

    print_file(file, 2, "0x%02x,\t/* %s */\n", fc, string_of_type(fc));
    *typestring_offset += 1;
    return 1;
}
