
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMEventTarget ;
typedef int nsIDOMEventListener ;
typedef int nsAString ;
typedef int PRUnichar ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 scalar_t__ NS_FAILED (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMEventTarget_AddEventListener (int *,int *,int *,int ,int ,int) ;

__attribute__((used)) static void init_event(nsIDOMEventTarget *target, const PRUnichar *type,
        nsIDOMEventListener *listener, BOOL capture)
{
    nsAString type_str;
    nsresult nsres;

    nsAString_InitDepend(&type_str, type);
    nsres = nsIDOMEventTarget_AddEventListener(target, &type_str, listener, capture, FALSE, 1);
    nsAString_Finish(&type_str);
    if(NS_FAILED(nsres))
        ERR("AddEventTarget failed: %08x\n", nsres);

}
