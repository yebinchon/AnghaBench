
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct vlc_memstream {int dummy; } ;
struct TYPE_3__ {long long rem; int quot; } ;
typedef TYPE_1__ lldiv_t ;


 int CLOCK_FREQ ;
 TYPE_1__ lldiv (int ,int) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,int ,long long,long long) ;

__attribute__((used)) static void write_duration(struct vlc_memstream *stream, vlc_tick_t duration)
{
    lldiv_t d;
    long long sec;

    duration /= CLOCK_FREQ;
    d = lldiv(duration, 60);
    sec = d.rem;
    d = lldiv(d.quot, 60);
    vlc_memstream_printf(stream, "%02lld:%02lld:%02lld", d.quot, d.rem, sec);
}
