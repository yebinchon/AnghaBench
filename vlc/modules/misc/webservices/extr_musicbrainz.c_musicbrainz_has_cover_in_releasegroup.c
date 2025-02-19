
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int boolean; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ const json_value ;


 scalar_t__ json_boolean ;
 TYPE_2__ const* json_getbyname (TYPE_2__ const*,char*) ;
 char* jsongetstring (TYPE_2__ const*,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool musicbrainz_has_cover_in_releasegroup(json_value ** const p_nodes,
                                                  size_t i_nodes,
                                                  const char *psz_group_id)
{
    for(size_t i=0; i<i_nodes; i++)
    {
        const json_value *rgnode = json_getbyname(p_nodes[i], "release-group");
        if(rgnode)
        {
            const char *psz_id = jsongetstring(rgnode, "id");
            if(!psz_id || strcmp(psz_id, psz_group_id))
                continue;

            const json_value *node = json_getbyname(p_nodes[i], "cover-art-archive");
            if(!node)
                continue;

            node = json_getbyname(node, "front");
            if(!node || node->type != json_boolean || !node->u.boolean)
                continue;

            return 1;
        }
    }

    return 0;
}
