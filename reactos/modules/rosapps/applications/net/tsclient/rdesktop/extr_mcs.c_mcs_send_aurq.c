
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int MCS_AURQ ;
 int * iso_init (int *,int) ;
 int iso_send (int *,int *) ;
 int out_uint8 (int *,int) ;
 int s_mark_end (int *) ;

__attribute__((used)) static BOOL
mcs_send_aurq(RDPCLIENT * This)
{
 STREAM s;

 s = iso_init(This, 1);

 if(s == ((void*)0))
  return False;

 out_uint8(s, (MCS_AURQ << 2));

 s_mark_end(s);
 return iso_send(This, s);
}
