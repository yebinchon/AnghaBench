
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int NLTypeSystem ;
typedef int NLType ;


 int assert (int const**) ;
 int type_get_type_system (int const*,int const**) ;
 int type_system_get_type (int const*,int const**,int ) ;

int type_system_get_type_system(const NLTypeSystem *type_system, const NLTypeSystem **ret, uint16_t type) {
        const NLType *nl_type;
        int r;

        assert(ret);

        r = type_system_get_type(type_system, &nl_type, type);
        if (r < 0)
                return r;

        type_get_type_system(nl_type, ret);
        return 0;
}
