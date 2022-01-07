
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {char* search_chain; char* open_chain; void* box_type; } ;
typedef TYPE_2__ intf_sys_t ;


 int BOX_OPEN ;
 void* BOX_PLAYLIST ;
 int BOX_SEARCH ;
 int ERR ;



 int OpenSelection (TYPE_1__*) ;
 int RemoveLastUTF8Entity (char*,size_t) ;
 int SearchPlaylist (TYPE_2__*) ;
 int assert (int) ;
 int clear () ;
 int getch () ;
 size_t strlen (char*) ;

__attribute__((used)) static void HandleEditBoxKey(intf_thread_t *intf, int key, int box)
{
    intf_sys_t *sys = intf->p_sys;
    bool search = box == BOX_SEARCH;
    char *str = search ? sys->search_chain: sys->open_chain;
    size_t len = strlen(str);

    assert(box == BOX_SEARCH || box == BOX_OPEN);

    switch(key)
    {
    case 0x0c:
    case 129: clear(); return;

    case 128:
    case '\r':
    case '\n':
        if (search)
            SearchPlaylist(sys);
        else
            OpenSelection(intf);

        sys->box_type = BOX_PLAYLIST;
        return;

    case 0x1b:
        if (getch() == ERR)
            sys->box_type = BOX_PLAYLIST;
        return;

    case 130:
    case 0x7f:
        RemoveLastUTF8Entity(str, len);
        break;

    default:
        if (len + 1 < (search ? sizeof sys->search_chain
                              : sizeof sys->open_chain)) {
            str[len + 0] = key;
            str[len + 1] = '\0';
        }
    }

    if (search)
        SearchPlaylist(sys);
}
