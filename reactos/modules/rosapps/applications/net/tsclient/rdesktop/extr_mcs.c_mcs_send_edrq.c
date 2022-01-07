
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int MCS_EDRQ ;
 int * iso_init (int *,int) ;
 int iso_send (int *,int *) ;
 int out_uint16_be (int *,int) ;
 int out_uint8 (int *,int) ;
 int s_mark_end (int *) ;

__attribute__((used)) static BOOL
mcs_send_edrq(RDPCLIENT * This)
{
 STREAM s;

 s = iso_init(This, 5);

 if(s == ((void*)0))
  return False;

 out_uint8(s, (MCS_EDRQ << 2));
 out_uint16_be(s, 1);
 out_uint16_be(s, 1);

 s_mark_end(s);
 return iso_send(This, s);
}
