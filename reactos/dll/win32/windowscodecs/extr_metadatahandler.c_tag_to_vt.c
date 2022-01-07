
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHORT ;
__attribute__((used)) static int tag_to_vt(SHORT tag)
{
    static const int tag2vt[] =
    {
        139,
        131,
        134,
        130,
        129,
        128,
        138,
        140,
        137,
        136,
        135,
        133,
        132,
        140,
    };
    return (tag > 0 && tag <= 13) ? tag2vt[tag] : 140;
}
