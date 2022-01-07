
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
bf_crypt_restore()
{
    randbyte_offset = save_randbyte_offset;
    update_offset = save_update_offset;
    mch_memmove(ofb_buffer, save_ofb_buffer, BF_OFB_LEN);
    mch_memmove(pax, save_pax, 4 * 18);
    mch_memmove(sbx, save_sbx, 4 * 4 * 256);
}
