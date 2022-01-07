
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int item; } ;
struct TYPE_4__ {TYPE_1__ media_list_item_added; } ;
struct libvlc_event_t {TYPE_2__ u; } ;


 int assert (char*) ;
 int free (char*) ;
 char* libvlc_media_get_mrl (int ) ;
 int test_log (char*,char const*,int ,char*) ;

__attribute__((used)) static void
ml_item_event(const struct libvlc_event_t *p_ev, const char *psz_event)
{
    char *psz_mrl = libvlc_media_get_mrl(p_ev->u.media_list_item_added.item);
    assert(psz_mrl);

    test_log("item %s(%d): '%s'\n", psz_event,
             p_ev->u.media_list_item_added.index, psz_mrl);
    free(psz_mrl);
}
