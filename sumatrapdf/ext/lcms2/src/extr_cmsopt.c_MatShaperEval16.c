
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsS1Fixed14Number ;
typedef int cmsContext ;
struct TYPE_2__ {int* Shaper1R; int* Shaper1G; int* Shaper1B; int** Mat; int* Off; int* Shaper2R; int* Shaper2G; int* Shaper2B; } ;
typedef TYPE_1__ MatShaper8Data ;


 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
void MatShaperEval16(cmsContext ContextID, register const cmsUInt16Number In[],
                     register cmsUInt16Number Out[],
                     register const void* D)
{
    MatShaper8Data* p = (MatShaper8Data*) D;
    cmsS1Fixed14Number l1, l2, l3, r, g, b;
    cmsUInt32Number ri, gi, bi;
    cmsUNUSED_PARAMETER(ContextID);



    ri = In[0] & 0xFFU;
    gi = In[1] & 0xFFU;
    bi = In[2] & 0xFFU;


    r = p->Shaper1R[ri];
    g = p->Shaper1G[gi];
    b = p->Shaper1B[bi];


    l1 = (p->Mat[0][0] * r + p->Mat[0][1] * g + p->Mat[0][2] * b + p->Off[0] + 0x2000) >> 14;
    l2 = (p->Mat[1][0] * r + p->Mat[1][1] * g + p->Mat[1][2] * b + p->Off[1] + 0x2000) >> 14;
    l3 = (p->Mat[2][0] * r + p->Mat[2][1] * g + p->Mat[2][2] * b + p->Off[2] + 0x2000) >> 14;


    ri = (l1 < 0) ? 0 : ((l1 > 16384) ? 16384U : (cmsUInt32Number) l1);
    gi = (l2 < 0) ? 0 : ((l2 > 16384) ? 16384U : (cmsUInt32Number) l2);
    bi = (l3 < 0) ? 0 : ((l3 > 16384) ? 16384U : (cmsUInt32Number) l3);


    Out[0] = p->Shaper2R[ri];
    Out[1] = p->Shaper2G[gi];
    Out[2] = p->Shaper2B[bi];

}
