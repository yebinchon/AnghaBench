
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int MCS_TAG_DOMAIN_PARAMS ;
 int ber_out_header (int ,int ,int) ;
 int ber_out_integer (int ,int) ;

__attribute__((used)) static void
mcs_out_domain_params(STREAM s, int max_channels, int max_users, int max_tokens, int max_pdusize)
{
 ber_out_header(s, MCS_TAG_DOMAIN_PARAMS, 32);
 ber_out_integer(s, max_channels);
 ber_out_integer(s, max_users);
 ber_out_integer(s, max_tokens);
 ber_out_integer(s, 1);
 ber_out_integer(s, 0);
 ber_out_integer(s, 1);
 ber_out_integer(s, max_pdusize);
 ber_out_integer(s, 2);
}
