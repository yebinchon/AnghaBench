
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
typedef enum tgl_typing_status { ____Placeholder_tgl_typing_status } tgl_typing_status ;


 int mprintf (struct in_ev*,char*) ;
void print_typing (struct in_ev *ev, enum tgl_typing_status status) {
  switch (status) {
  case 135:
    mprintf (ev, "doing nothing");
    break;
  case 132:
    mprintf (ev, "typing");
    break;
  case 138:
    mprintf (ev, "deleting typed message");
    break;
  case 133:
    mprintf (ev, "recording video");
    break;
  case 128:
    mprintf (ev, "uploading video");
    break;
  case 134:
    mprintf (ev, "recording audio");
    break;
  case 131:
    mprintf (ev, "uploading audio");
    break;
  case 129:
    mprintf (ev, "uploading photo");
    break;
  case 130:
    mprintf (ev, "uploading document");
    break;
  case 136:
    mprintf (ev, "choosing location");
    break;
  case 137:
    mprintf (ev, "choosing contact");
    break;
  }
}
