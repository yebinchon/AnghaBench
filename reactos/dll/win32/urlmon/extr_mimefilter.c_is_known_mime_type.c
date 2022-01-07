
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int mime; } ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* mime_filters ;
 TYPE_1__* mime_filters_any_pos ;
 int strcmpW (int const*,int ) ;

__attribute__((used)) static BOOL is_known_mime_type(const WCHAR *mime)
{
    unsigned i;

    for(i=0; i < ARRAY_SIZE(mime_filters_any_pos); i++) {
        if(!strcmpW(mime, mime_filters_any_pos[i].mime))
            return TRUE;
    }

    for(i=0; i < ARRAY_SIZE(mime_filters); i++) {
        if(!strcmpW(mime, mime_filters[i].mime))
            return TRUE;
    }

    return FALSE;
}
