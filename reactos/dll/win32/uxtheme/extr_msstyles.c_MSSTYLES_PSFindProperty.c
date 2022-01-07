
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int properties; } ;
typedef int PTHEME_PROPERTY ;
typedef TYPE_1__* PTHEME_PARTSTATE ;


 int MSSTYLES_LFindProperty (int ,int,int) ;

__attribute__((used)) static inline PTHEME_PROPERTY MSSTYLES_PSFindProperty(PTHEME_PARTSTATE ps, int iPropertyPrimitive, int iPropertyId)
{
    return MSSTYLES_LFindProperty(ps->properties, iPropertyPrimitive, iPropertyId);
}
