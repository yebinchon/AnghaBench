
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ drm; int present; scalar_t__ plane_id; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* fourccmatching ;

__attribute__((used)) static void CheckFourCCList(uint32_t drmfourcc, uint32_t plane_id)
{
    unsigned i;

    for (i = 0; i < ARRAY_SIZE(fourccmatching); i++) {
        if (fourccmatching[i].drm == drmfourcc) {
            if (fourccmatching[i].present)



                break;

            fourccmatching[i].present = 1;
            fourccmatching[i].plane_id = plane_id;
            break;
        }
    }
}
