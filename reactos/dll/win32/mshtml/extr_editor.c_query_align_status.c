
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef scalar_t__ cpp_bool ;
typedef int WCHAR ;
struct TYPE_9__ {TYPE_1__* doc_node; TYPE_3__* window; TYPE_2__* doc_obj; } ;
struct TYPE_8__ {scalar_t__ readystate; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
struct TYPE_6__ {int nsdoc; } ;
typedef TYPE_4__ HTMLDocument ;
typedef int DWORD ;


 scalar_t__ EDITMODE ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int OLECMDF_ENABLED ;
 int OLECMDF_LATCHED ;
 int OLECMDF_SUPPORTED ;
 scalar_t__ READYSTATE_INTERACTIVE ;
 int nsAString_Finish (int *) ;
 int nsAString_Init (int *,int const*) ;
 int nsIDOMHTMLDocument_QueryCommandState (int ,int *,scalar_t__*) ;

__attribute__((used)) static DWORD query_align_status(HTMLDocument *This, const WCHAR *align)
{
    DWORD ret = OLECMDF_SUPPORTED | OLECMDF_ENABLED;
    nsAString justify_str;
    cpp_bool b;
    nsresult nsres;

    if(This->doc_obj->usermode != EDITMODE || This->window->readystate < READYSTATE_INTERACTIVE)
        return OLECMDF_SUPPORTED;

    nsAString_Init(&justify_str, align);
    nsres = nsIDOMHTMLDocument_QueryCommandState(This->doc_node->nsdoc, &justify_str, &b);
    nsAString_Finish(&justify_str);
    if(NS_SUCCEEDED(nsres) && b)
        ret |= OLECMDF_LATCHED;

    return ret;
}
