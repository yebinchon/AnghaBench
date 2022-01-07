
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BF_OFB_LEN ;
 int mch_memmove (int ,int ,int) ;
 int ofb_buffer ;
 int pax ;
 int randbyte_offset ;
 int save_ofb_buffer ;
 int save_pax ;
 int save_randbyte_offset ;
 int save_sbx ;
 int save_update_offset ;
 int sbx ;
 int update_offset ;

void
bf_crypt_save()
{
    save_randbyte_offset = randbyte_offset;
    save_update_offset = update_offset;
    mch_memmove(save_ofb_buffer, ofb_buffer, BF_OFB_LEN);
    mch_memmove(save_pax, pax, 4 * 18);
    mch_memmove(save_sbx, sbx, 4 * 4 * 256);
}
