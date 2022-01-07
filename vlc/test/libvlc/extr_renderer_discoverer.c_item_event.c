
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_renderer_item_t ;


 int libvlc_renderer_item_flags (int const*) ;
 int libvlc_renderer_item_name (int const*) ;
 int libvlc_renderer_item_type (int const*) ;
 int test_log (char*,char const*,int ,int ,int ) ;

__attribute__((used)) static void
item_event(const libvlc_renderer_item_t *p_item, const char *psz_event)
{
    test_log("item %s: name: '%s', type: '%s', flags: 0x%X\n", psz_event,
             libvlc_renderer_item_name(p_item), libvlc_renderer_item_type(p_item),
             libvlc_renderer_item_flags(p_item));
}
