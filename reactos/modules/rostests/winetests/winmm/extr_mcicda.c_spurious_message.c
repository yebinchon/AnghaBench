
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ message; } ;
typedef TYPE_1__* LPMSG ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MM_MCINOTIFY ;
 int TRUE ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static BOOL spurious_message(LPMSG msg)
{

  if(msg->message != MM_MCINOTIFY) {
    trace("skipping spurious message %04x\n",msg->message);
    return TRUE;
  }
  return FALSE;
}
