
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_msg (char*,char const*) ;

__attribute__((used)) static inline void service_event(const char *event)
{
    send_msg("EVENT", event);
}
