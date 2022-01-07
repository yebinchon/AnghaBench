
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void conn_send_raw (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void conn_send(const char *str)
{
    return conn_send_raw(str, strlen(str));
}
