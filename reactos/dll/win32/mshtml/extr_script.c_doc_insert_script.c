
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parse; } ;
typedef TYPE_1__ ScriptHost ;
typedef int HTMLScriptElement ;
typedef int HTMLInnerWindow ;


 TYPE_1__* get_elem_script_host (int *,int *) ;
 int parse_script_elem (TYPE_1__*,int *) ;

void doc_insert_script(HTMLInnerWindow *window, HTMLScriptElement *script_elem)
{
    ScriptHost *script_host;

    script_host = get_elem_script_host(window, script_elem);
    if(!script_host)
        return;

    if(script_host->parse)
        parse_script_elem(script_host, script_elem);
}
