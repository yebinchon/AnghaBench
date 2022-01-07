
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metrics; } ;
typedef int PTHEME_PROPERTY ;
typedef TYPE_1__* PTHEME_FILE ;


 int MSSTYLES_LFindProperty (int ,int,int) ;

PTHEME_PROPERTY MSSTYLES_FindMetric(PTHEME_FILE tf, int iPropertyPrimitive, int iPropertyId)
{
    return MSSTYLES_LFindProperty(tf->metrics, iPropertyPrimitive, iPropertyId);
}
