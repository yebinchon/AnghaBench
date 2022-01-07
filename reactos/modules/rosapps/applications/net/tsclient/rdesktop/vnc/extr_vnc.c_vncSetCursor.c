
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rfbScreenInfoPtr ;
typedef int rfbCursorPtr ;


 int FALSE ;
 int rfbSetCursor (int ,int ,int ) ;

void
vncSetCursor(rfbScreenInfoPtr s, rfbCursorPtr c)
{
 rfbSetCursor(s, c, FALSE);
}
