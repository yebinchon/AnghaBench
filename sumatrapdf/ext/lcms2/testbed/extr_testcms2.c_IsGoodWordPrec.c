
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsBool ;


 int FALSE ;
 int Fail (char*,char const*,scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ abs (scalar_t__) ;

cmsBool IsGoodWordPrec(const char *title, cmsUInt16Number in, cmsUInt16Number out, cmsUInt16Number maxErr)
{
    if ((abs(in - out) > maxErr )) {

        Fail("(%s): Must be %x, But is %x ", title, in, out);
        return FALSE;
    }

    return TRUE;
}
