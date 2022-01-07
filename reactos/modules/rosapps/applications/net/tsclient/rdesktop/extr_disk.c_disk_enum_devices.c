
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {char* name; char* local_path; int device_type; } ;
typedef TYPE_2__ RDPCLIENT ;


 int DEVICE_TYPE_DISK ;
 size_t RDPDR_MAX_DEVICES ;
 int fprintf (int ,char*,char*,char*) ;
 char* next_arg (char*,char) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 scalar_t__ xmalloc (int) ;

int
disk_enum_devices(RDPCLIENT * This, uint32 * id, char *optarg)
{
 char *pos = optarg;
 char *pos2;
 int count = 0;


 optarg++;
 while ((pos = next_arg(optarg, ',')) && *id < RDPDR_MAX_DEVICES)
 {
  pos2 = next_arg(optarg, '=');

  strncpy(This->rdpdr_device[*id].name, optarg, sizeof(This->rdpdr_device[*id].name) - 1);
  if (strlen(optarg) > (sizeof(This->rdpdr_device[*id].name) - 1))
   fprintf(stderr, "share name %s truncated to %s\n", optarg,
    This->rdpdr_device[*id].name);

  This->rdpdr_device[*id].local_path = (char *) xmalloc(strlen(pos2) + 1);
  strcpy(This->rdpdr_device[*id].local_path, pos2);
  This->rdpdr_device[*id].device_type = DEVICE_TYPE_DISK;
  count++;
  (*id)++;

  optarg = pos;
 }
 return count;
}
