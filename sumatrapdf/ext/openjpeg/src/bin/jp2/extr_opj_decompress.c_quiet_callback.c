
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void quiet_callback(const char *msg, void *client_data)
{
    (void)msg;
    (void)client_data;
}
