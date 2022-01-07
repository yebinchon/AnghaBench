
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;


 int DT_METAFILE ;


 int TRACE (char*,int) ;

__attribute__((used)) static INT MFDRV_GetDeviceCaps(PHYSDEV dev, INT cap)
{
    switch(cap)
    {
    case 129:
        return DT_METAFILE;
    case 128:
        return 0;
    default:
        TRACE(" unsupported capability %d, will return 0\n", cap );
    }
    return 0;
}
