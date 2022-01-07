
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
 int static_sprintf (char*,char*,int) ;

char* NtStatusError(NTSTATUS Status) {
 static char unknown[32];

 switch (Status) {
 case 129:
  return "Operation Successful";
 case 128:
  return "Operation Failed";
 case 143:
  return "Buffer Overflow";
 case 137:
  return "Not Implemented";
 case 141:
  return "Info Length Mismatch";
 case 139:
  return "Invalid Handle.";
 case 138:
  return "Invalid Parameter";
 case 135:
  return "Not Enough Quota";
 case 144:
  return "Access Denied";
 case 142:
  return "Buffer Too Small";
 case 131:
  return "Wrong Type";
 case 134:
  return "Object Name Invalid";
 case 133:
  return "Object Name not found";
 case 132:
  return "Object Path Invalid";
 case 130:
  return "Sharing Violation";
 case 140:
  return "Insufficient resources";
 case 136:
  return "Operation is not supported";
 default:
  static_sprintf(unknown, "Unknown error 0x%08lx", Status);
  return unknown;
 }
}
