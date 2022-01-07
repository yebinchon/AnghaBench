
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int i_index; void* psz_artist; void* psz_title; } ;
typedef TYPE_3__ musicbrainz_track_t ;
struct TYPE_10__ {TYPE_4__ const** values; scalar_t__ length; } ;
struct TYPE_11__ {int integer; TYPE_1__ array; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_4__ json_value ;


 scalar_t__ json_array ;
 void* json_dupstring (TYPE_4__ const*,char*) ;
 TYPE_4__* json_getbyname (TYPE_4__ const*,char*) ;
 scalar_t__ json_integer ;

__attribute__((used)) static bool musicbrainz_fill_track(const json_value *tracknode, musicbrainz_track_t *t)
{
    t->psz_title = json_dupstring(tracknode, "title");

    const json_value *node = json_getbyname(tracknode, "artist-credit");
    if (node && node->type == json_array && node->u.array.length)
        t->psz_artist = json_dupstring(node->u.array.values[0], "name");

    node = json_getbyname(tracknode, "position");
    if (node && node->type == json_integer)
        t->i_index = node->u.integer;

    return 1;
}
