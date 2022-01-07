
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsS15Fixed16Number ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat64Number ;


 int DbgThread () ;
 scalar_t__ FIXED_PRECISION_15_16 ;
 scalar_t__ _cms15Fixed16toDouble (int ,int ) ;
 int _cmsDoubleTo15Fixed16 (int ,scalar_t__) ;
 scalar_t__ fabs (scalar_t__) ;

__attribute__((used)) static
cmsInt32Number TestSingleFixed15_16(cmsFloat64Number d)
{
    cmsS15Fixed16Number f = _cmsDoubleTo15Fixed16(DbgThread(), d);
    cmsFloat64Number RoundTrip = _cms15Fixed16toDouble(DbgThread(), f);
    cmsFloat64Number Error = fabs(d - RoundTrip);

    return ( Error <= FIXED_PRECISION_15_16);
}
