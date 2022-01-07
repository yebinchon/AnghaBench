
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt16Number ;
struct TYPE_3__ {double L; double a; double b; } ;
typedef TYPE_1__ cmsCIELab ;



__attribute__((used)) static
void ITU2Lab(const cmsUInt16Number In[3], cmsCIELab* Lab)
{
    Lab -> L = (double) In[0] / 655.35;
    Lab -> a = (double) 170.* (In[1] - 32768.) / 65535.;
    Lab -> b = (double) 200.* (In[2] - 24576.) / 65535.;
}
