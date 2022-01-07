
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CEvent ;


 int BOOLToWRes (int ) ;
 int ResetEvent (int ) ;

WRes Event_Reset(CEvent *p) { return BOOLToWRes(ResetEvent(*p)); }
