
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xmlNodePtr ;
struct TYPE_3__ {scalar_t__ type; int * last; } ;
typedef TYPE_1__ xmlNode ;


 scalar_t__ XML_NAMESPACE_DECL ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

xmlNodePtr
xmlGetLastChild(const xmlNode *parent) {
    if ((parent == ((void*)0)) || (parent->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }
    return(parent->last);
}
