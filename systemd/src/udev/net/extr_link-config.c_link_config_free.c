
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* alias; struct TYPE_4__* name; struct TYPE_4__* name_policy; struct TYPE_4__* mac; struct TYPE_4__* description; int conditions; int match_property; int match_name; int match_type; int match_driver; int match_path; int match_mac; struct TYPE_4__* filename; } ;
typedef TYPE_1__ link_config ;


 int condition_free_list (int ) ;
 int free (TYPE_1__*) ;
 int set_free_free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void link_config_free(link_config *link) {
        if (!link)
                return;

        free(link->filename);

        set_free_free(link->match_mac);
        strv_free(link->match_path);
        strv_free(link->match_driver);
        strv_free(link->match_type);
        strv_free(link->match_name);
        strv_free(link->match_property);
        condition_free_list(link->conditions);

        free(link->description);
        free(link->mac);
        free(link->name_policy);
        free(link->name);
        free(link->alias);

        free(link);
}
