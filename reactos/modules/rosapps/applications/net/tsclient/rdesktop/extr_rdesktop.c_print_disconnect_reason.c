
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
print_disconnect_reason(uint16 reason)
{
 char *text;

 switch (reason)
 {
  case 134:
   text = "No information available";
   break;

  case 147:
   text = "Server initiated disconnect";
   break;

  case 146:
   text = "Server initiated logoff";
   break;

  case 129:
   text = "Server idle timeout reached";
   break;

  case 128:
   text = "Server logon timeout reached";
   break;

  case 132:
   text = "The session was replaced";
   break;

  case 133:
   text = "The server is out of memory";
   break;

  case 131:
   text = "The server denied the connection";
   break;

  case 130:
   text = "The server denied the connection for security reason";
   break;

  case 138:
   text = "Internal licensing error";
   break;

  case 136:
   text = "No license server available";
   break;

  case 137:
   text = "No valid license available";
   break;

  case 140:
   text = "Invalid licensing message";
   break;

  case 139:
   text = "Hardware id doesn't match software license";
   break;

  case 141:
   text = "Client license error";
   break;

  case 145:
   text = "Network error during licensing protocol";
   break;

  case 143:
   text = "Licensing protocol was not completed";
   break;

  case 142:
   text = "Incorrect client license enryption";
   break;

  case 144:
   text = "Can't upgrade license";
   break;

  case 135:
   text = "The server is not licensed to accept remote connections";
   break;

  default:
   if (reason > 0x1000 && reason < 0x7fff)
   {
    text = "Internal protocol error";
   }
   else
   {
    text = "Unknown reason";
   }
 }
 fprintf(stderr, "disconnect: %s.\n", text);
}
