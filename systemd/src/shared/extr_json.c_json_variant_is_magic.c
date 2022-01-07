
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int const* _JSON_VARIANT_MAGIC_MAX ;

__attribute__((used)) static bool json_variant_is_magic(const JsonVariant *v) {
        if (!v)
                return 0;

        return v < _JSON_VARIANT_MAGIC_MAX;
}
