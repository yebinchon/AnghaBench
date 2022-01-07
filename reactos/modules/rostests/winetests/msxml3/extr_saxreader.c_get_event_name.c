
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t CH ;


 char const** event_names ;

__attribute__((used)) static const char *get_event_name(CH event)
{
    return event_names[event];
}
