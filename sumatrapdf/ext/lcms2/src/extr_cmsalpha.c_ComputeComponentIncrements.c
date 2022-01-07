
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 int ComputeIncrementsForChunky (int ,int *,int *) ;
 int ComputeIncrementsForPlanar (int ,int ,int *,int *) ;
 scalar_t__ T_PLANAR (int ) ;

__attribute__((used)) static
void ComputeComponentIncrements(cmsUInt32Number Format,
                                 cmsUInt32Number BytesPerPlane,
                                 cmsUInt32Number ComponentStartingOrder[],
                                 cmsUInt32Number ComponentPointerIncrements[])
{
       if (T_PLANAR(Format)) {

              ComputeIncrementsForPlanar(Format, BytesPerPlane, ComponentStartingOrder, ComponentPointerIncrements);
       }
       else {
              ComputeIncrementsForChunky(Format, ComponentStartingOrder, ComponentPointerIncrements);
       }

}
