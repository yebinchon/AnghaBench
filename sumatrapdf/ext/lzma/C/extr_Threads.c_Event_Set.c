
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CEvent ;


 int BOOLToWRes (int ) ;
 int SetEvent (int ) ;

WRes Event_Set(CEvent *p) { return BOOLToWRes(SetEvent(*p)); }
