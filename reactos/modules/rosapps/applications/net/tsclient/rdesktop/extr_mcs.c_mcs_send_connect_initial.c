
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_10__ {scalar_t__ data; scalar_t__ end; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int BER_TAG_BOOLEAN ;
 int BER_TAG_OCTET_STRING ;
 int False ;
 int MCS_CONNECT_INITIAL ;
 int ber_out_header (TYPE_1__*,int ,int) ;
 TYPE_1__* iso_init (int *,int) ;
 int iso_send (int *,TYPE_1__*) ;
 int mcs_out_domain_params (TYPE_1__*,int,int,int,int) ;
 int out_uint8 (TYPE_1__*,int) ;
 int out_uint8p (TYPE_1__*,scalar_t__,int) ;
 int s_mark_end (TYPE_1__*) ;

__attribute__((used)) static BOOL
mcs_send_connect_initial(RDPCLIENT * This, STREAM mcs_data)
{
 int datalen = (uint16)(mcs_data->end - mcs_data->data);
 int length = 9 + 3 * 34 + 4 + datalen;
 STREAM s;

 s = iso_init(This, length + 5);

 if(s == ((void*)0))
  return False;

 ber_out_header(s, MCS_CONNECT_INITIAL, length);
 ber_out_header(s, BER_TAG_OCTET_STRING, 1);
 out_uint8(s, 1);
 ber_out_header(s, BER_TAG_OCTET_STRING, 1);
 out_uint8(s, 1);

 ber_out_header(s, BER_TAG_BOOLEAN, 1);
 out_uint8(s, 0xff);

 mcs_out_domain_params(s, 34, 2, 0, 0xffff);
 mcs_out_domain_params(s, 1, 1, 1, 0x420);
 mcs_out_domain_params(s, 0xffff, 0xfc17, 0xffff, 0xffff);

 ber_out_header(s, BER_TAG_OCTET_STRING, datalen);
 out_uint8p(s, mcs_data->data, datalen);

 s_mark_end(s);
 return iso_send(This, s);
}
