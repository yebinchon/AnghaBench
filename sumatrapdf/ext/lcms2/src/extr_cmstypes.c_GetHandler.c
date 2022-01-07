
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ cmsTagTypeSignature ;
struct TYPE_6__ {scalar_t__ Signature; } ;
typedef TYPE_1__ cmsTagTypeHandler ;
struct TYPE_7__ {TYPE_1__ Handler; struct TYPE_7__* Next; } ;
typedef TYPE_2__ _cmsTagTypeLinkedList ;



__attribute__((used)) static
cmsTagTypeHandler* GetHandler(cmsTagTypeSignature sig, _cmsTagTypeLinkedList* PluginLinkedList, _cmsTagTypeLinkedList* DefaultLinkedList)
{
    _cmsTagTypeLinkedList* pt;

    for (pt = PluginLinkedList;
         pt != ((void*)0);
         pt = pt ->Next) {

            if (sig == pt -> Handler.Signature) return &pt ->Handler;
    }

    for (pt = DefaultLinkedList;
         pt != ((void*)0);
         pt = pt ->Next) {

            if (sig == pt -> Handler.Signature) return &pt ->Handler;
    }

    return ((void*)0);
}
