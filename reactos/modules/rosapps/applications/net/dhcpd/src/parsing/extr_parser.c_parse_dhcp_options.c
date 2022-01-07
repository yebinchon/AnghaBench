
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* options; } ;
struct TYPE_5__ {int type; int r_ip; int r_mask; int r_router; int r_lease; char* hostname; } ;
typedef TYPE_1__ DHCPOPTIONS ;
typedef TYPE_2__ DHCPMESSAGE ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int stdout ;
 int strncpy (char*,int*,int) ;

int parse_dhcp_options( DHCPMESSAGE *dhcpm, DHCPOPTIONS *dhcpo )
{
  int pointer, opointer;
  int olength;

  pointer = 0;

  fprintf( stdout, "parse_dhcp_options [begin]!\n");



  dhcpo->type = 0;

  dhcpo->r_ip = 0;

  dhcpo->r_mask = 0;

  dhcpo->r_router = 0;

  dhcpo->r_lease = 0;

  dhcpo->hostname = ((void*)0);

  while( pointer< 312 )
    {
      if(( dhcpm->options[0] != 99 ) && (dhcpm->options[1]!=130) && (dhcpm->options[2]!=83) && (dhcpm->options[3]!= 99))
 {
   fprintf( stdout, "No magic cookie! Aborting! \n" );
   return -1;
 }
      switch( dhcpm->options[pointer] ){
      case 158:
 pointer++;
 break;
      case 173:

 pointer += 2;
 dhcpo->type = dhcpm->options[pointer++];
 break;
      case 152:

 opointer = pointer + 2;
 olength = pointer + dhcpm->options[pointer + 1];
 while( opointer < olength )
   {
     switch( dhcpm->options[opointer] ){
     case 185:

       opointer += 2;
       dhcpo->r_ip += dhcpm->options[opointer++];
       dhcpo->r_ip = dhcpo->r_ip << 8;
       dhcpo->r_ip += dhcpm->options[opointer++];
       dhcpo->r_ip = dhcpo->r_ip << 8;
       dhcpo->r_ip += dhcpm->options[opointer++];
       dhcpo->r_ip = dhcpo->r_ip << 8;
       dhcpo->r_ip += dhcpm->options[opointer++];
       break;
     case 179:

       opointer += 2;
       dhcpo->r_mask += dhcpm->options[opointer++];
       dhcpo->r_mask = dhcpo->r_ip << 8;
       dhcpo->r_mask += dhcpm->options[opointer++];
       dhcpo->r_mask = dhcpo->r_ip << 8;
       dhcpo->r_mask += dhcpm->options[opointer++];
       dhcpo->r_mask = dhcpo->r_ip << 8;
       dhcpo->r_mask += dhcpm->options[opointer++];
       break;
     case 146:

       opointer += 2;
       dhcpo->r_router += dhcpm->options[opointer++];
       dhcpo->r_router = dhcpo->r_ip << 8;
       dhcpo->r_router += dhcpm->options[opointer++];
       dhcpo->r_router = dhcpo->r_ip << 8;
       dhcpo->r_router += dhcpm->options[opointer++];
       dhcpo->r_router = dhcpo->r_ip << 8;
       dhcpo->r_router += dhcpm->options[opointer++];
       break;
     case 182:
       opointer += 2;
       dhcpo->r_lease += dhcpm->options[opointer++];
       dhcpo->r_lease = dhcpo->r_ip << 8;
       dhcpo->r_lease += dhcpm->options[opointer++];
       dhcpo->r_lease = dhcpo->r_ip << 8;
       dhcpo->r_lease += dhcpm->options[opointer++];
       dhcpo->r_lease = dhcpo->r_ip << 8;
       dhcpo->r_lease += dhcpm->options[opointer++];
       break;
     case 189:
       opointer += 1;
       dhcpo->hostname = (char *)malloc( dhcpm->options[opointer] + 1);
       strncpy( dhcpo->hostname, &dhcpm->options[opointer+1], dhcpm->options[opointer] );
       opointer += dhcpm->options[opointer] + 1;
     default:

       opointer++;
       break;
     }
   }
 pointer = opointer;
 break;
      case 132:
      case 133:
      case 161:
      case 195:
      case 181:
      case 197:
      case 180:
      case 187:
      case 148:
      case 200:
      case 175:
      case 194:
      case 139:
      case 147:
      case 191:
      case 184:
      case 162:
      case 154:
      case 177:
      case 196:
      case 157:
      case 156:
      case 186:
      case 203:
      case 199:
      case 155:
      case 178:
      case 151:
      case 145:
      case 142:
      case 135:
      case 202:
      case 192:
      case 138:
      case 136:
      case 137:
      case 167:
      case 164:
      case 160:
      case 130:
      case 170:
      case 171:
      case 169:
      case 168:
      case 128:
      case 129:
      case 159:
      case 144:
      case 174:
      case 176:
      case 149:
      case 150:
      case 131:
      case 166:
      case 165:
      case 134:
      case 201:
      case 172:
      case 143:
      case 153:
      case 163:
      case 188:
      case 190:
      case 183:
      case 140:
      case 141:
      case 198:
 pointer++;
 pointer += dhcpm->options[pointer];
      case 193:

 fprintf( stdout, "parse_dhcp_options: END option found! [end]!\n");
 return 0;
      default:

 pointer++;
 break;
      }
    }
  fprintf( stdout, "parse_dhcp_options [end]!\n");
  return 0;
}
