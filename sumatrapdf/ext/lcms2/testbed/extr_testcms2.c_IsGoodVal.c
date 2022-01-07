
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsFloat64Number ;
typedef int cmsBool ;


 int FALSE ;
 int Fail (char*,char const*,scalar_t__,scalar_t__) ;
 scalar_t__ MaxErr ;
 int TRUE ;
 scalar_t__ fabs (scalar_t__) ;

cmsBool IsGoodVal(const char *title, cmsFloat64Number in, cmsFloat64Number out, cmsFloat64Number max)
{
    cmsFloat64Number Err = fabs(in - out);

    if (Err > MaxErr) MaxErr = Err;

        if ((Err > max )) {

              Fail("(%s): Must be %f, But is %f ", title, in, out);
              return FALSE;
              }

       return TRUE;
}
