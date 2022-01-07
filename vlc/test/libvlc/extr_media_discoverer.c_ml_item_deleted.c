
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libvlc_event_t {int dummy; } ;


 int ml_item_event (struct libvlc_event_t const*,char*) ;

__attribute__((used)) static void
ml_item_deleted(const struct libvlc_event_t *p_ev, void *p_data)
{
    (void) p_data;
    ml_item_event(p_ev, "deleted");
}
