
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_id {int guid; } ;
typedef int GUID ;


 unsigned int ARRAY_SIZE (struct effect_id const*) ;
 scalar_t__ IsEqualGUID (int const*,int ) ;
 struct effect_id const* effect_conversion ;

__attribute__((used)) static const struct effect_id* effect_from_guid(const GUID *guid)
{
    unsigned int i;
    for (i = 0; i < ARRAY_SIZE(effect_conversion); i++)
        if (IsEqualGUID(guid, effect_conversion[i].guid))
            return &effect_conversion[i];
    return ((void*)0);
}
