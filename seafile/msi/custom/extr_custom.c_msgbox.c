
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_OK ;
 int MessageBox (int *,char const*,char*,int ) ;

void msgbox(const char *msg)
{
    MessageBox(((void*)0), msg, "Seafile Custom", MB_OK);
}
