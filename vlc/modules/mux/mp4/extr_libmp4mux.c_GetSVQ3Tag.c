
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bo_t ;


 int GetDWBE (int const*) ;
 int bo_add_32be (int *,int) ;
 int bo_add_8 (int *,int) ;
 int bo_add_fourcc (int *,char*) ;
 int bo_add_mem (int *,int,int const*) ;
 int * box_new (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static bo_t *GetSVQ3Tag(const uint8_t *p_extra, size_t i_extra)
{
    bo_t *smi = box_new("SMI ");
    if(!smi)
        return ((void*)0);

    if (i_extra > 0x4e) {
        const uint8_t *p_end = &p_extra[i_extra];
        const uint8_t *p = &p_extra[0x46];

        while (p + 8 < p_end) {
            int i_size = GetDWBE(p);
            if (i_size <= 1)
                break;
            if (!strncmp((const char *)&p[4], "SMI ", 4)) {
                bo_add_mem(smi, p_end - p - 8, &p[8]);
                return smi;
            }
            p += i_size;
        }
    }


    bo_add_fourcc(smi, "SEQH");
    bo_add_32be(smi, 0x5);
    bo_add_32be(smi, 0xe2c0211d);
    bo_add_8(smi, 0xc0);

    return smi;
}
