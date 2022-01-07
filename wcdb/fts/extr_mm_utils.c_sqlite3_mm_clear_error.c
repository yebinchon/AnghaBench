
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* g_errmsg_buffer ;

void sqlite3_mm_clear_error()
{
    g_errmsg_buffer[0] = 0;
}
