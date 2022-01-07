
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct seat_data {int cursor_deadline; int * pointer; } ;


 int INT64_MAX ;

__attribute__((used)) static vlc_tick_t seat_next_deadline(const struct seat_data *sd)
{
    return (sd->pointer != ((void*)0)) ? sd->cursor_deadline : INT64_MAX;
}
