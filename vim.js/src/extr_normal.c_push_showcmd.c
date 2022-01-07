
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRCPY (int ,int ) ;
 int old_showcmd_buf ;
 scalar_t__ p_sc ;
 int showcmd_buf ;

void
push_showcmd()
{
    if (p_sc)
 STRCPY(old_showcmd_buf, showcmd_buf);
}
