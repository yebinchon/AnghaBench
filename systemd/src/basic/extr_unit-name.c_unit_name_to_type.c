
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitType ;


 int UNIT_NAME_ANY ;
 int _UNIT_TYPE_INVALID ;
 int assert (char const*) ;
 int assert_se (char const*) ;
 char* strrchr (char const*,char) ;
 int unit_name_is_valid (char const*,int ) ;
 int unit_type_from_string (char const*) ;

UnitType unit_name_to_type(const char *n) {
        const char *e;

        assert(n);

        if (!unit_name_is_valid(n, UNIT_NAME_ANY))
                return _UNIT_TYPE_INVALID;

        assert_se(e = strrchr(n, '.'));

        return unit_type_from_string(e + 1);
}
