
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef scalar_t__ cmsS15Fixed16Number ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat64Number ;


 int DbgThread () ;
 scalar_t__ FIXED_PRECISION_8_8 ;
 scalar_t__ _cms8Fixed8toDouble (int ,int ) ;
 scalar_t__ _cmsDoubleTo8Fixed8 (int ,scalar_t__) ;
 scalar_t__ fabs (scalar_t__) ;

__attribute__((used)) static
cmsInt32Number TestSingleFixed8_8(cmsFloat64Number d)
{
    cmsS15Fixed16Number f = _cmsDoubleTo8Fixed8(DbgThread(), d);
    cmsFloat64Number RoundTrip = _cms8Fixed8toDouble(DbgThread(), (cmsUInt16Number) f);
    cmsFloat64Number Error = fabs(d - RoundTrip);

    return ( Error <= FIXED_PRECISION_8_8);
}
