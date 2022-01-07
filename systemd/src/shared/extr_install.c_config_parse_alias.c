
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitType ;


 int LOG_WARNING ;
 int assert (char const*) ;
 int config_parse_strv (char const*,char const*,unsigned int,char const*,unsigned int,char const*,int,char const*,void*,void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,int ) ;
 int unit_name_to_type (char const*) ;
 int unit_type_may_alias (int ) ;
 int unit_type_to_string (int ) ;

__attribute__((used)) static int config_parse_alias(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        UnitType type;

        assert(unit);
        assert(filename);
        assert(lvalue);
        assert(rvalue);

        type = unit_name_to_type(unit);
        if (!unit_type_may_alias(type))
                return log_syntax(unit, LOG_WARNING, filename, line, 0,
                                  "Alias= is not allowed for %s units, ignoring.",
                                  unit_type_to_string(type));

        return config_parse_strv(unit, filename, line, section, section_line,
                                 lvalue, ltype, rvalue, data, userdata);
}
