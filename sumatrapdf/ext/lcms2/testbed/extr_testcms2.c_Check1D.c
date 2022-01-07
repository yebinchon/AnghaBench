
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
struct TYPE_6__ {int (* Lerp16 ) (int ,scalar_t__*,scalar_t__*,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Interpolation; } ;
typedef TYPE_2__ cmsInterpParams ;
typedef int cmsInt32Number ;
typedef int cmsBool ;


 int BuildTable (int,scalar_t__*,int ) ;
 int CMS_LERP_FLAGS_16BITS ;
 int DbgThread () ;
 int Fail (char*,int,scalar_t__,scalar_t__) ;
 TYPE_2__* _cmsComputeInterpParams (int ,int,int,int,scalar_t__*,int ) ;
 int _cmsFreeInterpParams (int ,TYPE_2__*) ;
 int abs (scalar_t__) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (int) ;
 int stub1 (int ,scalar_t__*,scalar_t__*,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number Check1D(cmsInt32Number nNodesToCheck, cmsBool Down, cmsInt32Number max_err)
{
    cmsUInt32Number i;
    cmsUInt16Number in, out;
    cmsInterpParams* p;
    cmsUInt16Number* Tab;

    Tab = (cmsUInt16Number*) malloc(sizeof(cmsUInt16Number)* nNodesToCheck);
    if (Tab == ((void*)0)) return 0;

    p = _cmsComputeInterpParams(DbgThread(), nNodesToCheck, 1, 1, Tab, CMS_LERP_FLAGS_16BITS);
    if (p == ((void*)0)) return 0;

    BuildTable(nNodesToCheck, Tab, Down);

    for (i=0; i <= 0xffff; i++) {

        in = (cmsUInt16Number) i;
        out = 0;

        p ->Interpolation.Lerp16(DbgThread(), &in, &out, p);

        if (Down) out = 0xffff - out;

        if (abs(out - in) > max_err) {

            Fail("(%dp): Must be %x, But is %x : ", nNodesToCheck, in, out);
            _cmsFreeInterpParams(DbgThread(), p);
            free(Tab);
            return 0;
        }
    }

    _cmsFreeInterpParams(DbgThread(), p);
    free(Tab);
    return 1;
}
