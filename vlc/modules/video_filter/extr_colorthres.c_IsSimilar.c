
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int sqrt (int) ;

__attribute__((used)) static bool IsSimilar( int u, int v,
                       int refu, int refv, int reflength,
                       int i_satthres, int i_simthres )
{
    int length = sqrt(u * u + v * v);

    int diffu = refu * length - u * reflength;
    int diffv = refv * length - v * reflength;
    int64_t difflen2 = diffu * diffu + diffv * diffv;
    int64_t thres = length * reflength;
    thres *= thres;
    return length > i_satthres && (difflen2 * i_simthres < thres);
}
