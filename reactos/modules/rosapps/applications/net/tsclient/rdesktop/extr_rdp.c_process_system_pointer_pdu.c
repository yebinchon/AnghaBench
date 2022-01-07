
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;



 int in_uint16 (int ,int) ;
 int ui_set_null_cursor (int *) ;
 int unimpl (char*,int) ;

void
process_system_pointer_pdu(RDPCLIENT * This, STREAM s)
{
 uint16 system_pointer_type;

 in_uint16(s, system_pointer_type);
 switch (system_pointer_type)
 {
  case 128:
   ui_set_null_cursor(This);
   break;

  default:
   unimpl("System pointer message 0x%x\n", system_pointer_type);
 }
}
