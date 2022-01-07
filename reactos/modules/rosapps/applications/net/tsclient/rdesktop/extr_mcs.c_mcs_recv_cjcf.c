
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int MCS_CJCF ;
 int error (char*,int) ;
 int in_uint8 (int *,int) ;
 int in_uint8s (int *,int) ;
 int * iso_recv (int *,int *) ;
 int s_check_end (int *) ;

__attribute__((used)) static BOOL
mcs_recv_cjcf(RDPCLIENT * This)
{
 uint8 opcode, result;
 STREAM s;

 s = iso_recv(This, ((void*)0));
 if (s == ((void*)0))
  return False;

 in_uint8(s, opcode);
 if ((opcode >> 2) != MCS_CJCF)
 {
  error("expected CJcf, got %d\n", opcode);
  return False;
 }

 in_uint8(s, result);
 if (result != 0)
 {
  error("CJrq: %d\n", result);
  return False;
 }

 in_uint8s(s, 4);
 if (opcode & 2)
  in_uint8s(s, 2);

 return s_check_end(s);
}
