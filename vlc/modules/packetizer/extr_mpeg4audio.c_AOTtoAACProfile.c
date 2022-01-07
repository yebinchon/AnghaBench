
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AAC_PROFILE_MAIN ;
 int static_assert (int,char*) ;

__attribute__((used)) static int AOTtoAACProfile(uint8_t i_object_type)
{
    switch(i_object_type)
    {
        case 134:
        case 136:
        case 130:
        case 135:
        case 132:
        case 131:
        case 128:
        case 133:
        case 129:
            {
            static_assert(134 == AAC_PROFILE_MAIN + 1,
                          "invalid profile to object mapping");
            return i_object_type - 1;
            }
        default:
            return -1;
    }
}
