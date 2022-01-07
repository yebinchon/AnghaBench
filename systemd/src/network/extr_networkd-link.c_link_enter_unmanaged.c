
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Link ;


 int LINK_STATE_UNMANAGED ;
 int assert (int *) ;
 int link_dirty (int *) ;
 int link_set_state (int *,int ) ;

__attribute__((used)) static void link_enter_unmanaged(Link *link) {
        assert(link);

        link_set_state(link, LINK_STATE_UNMANAGED);

        link_dirty(link);
}
