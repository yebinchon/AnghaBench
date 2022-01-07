
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ major; scalar_t__ minor; scalar_t__ build; scalar_t__ revision; } ;
struct assembly_identity {TYPE_1__ version; scalar_t__ language; int public_key; int arch; int name; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int is_matching_string (int ,int ) ;
 scalar_t__ strcmpW (int ,scalar_t__) ;
 scalar_t__ strcmpiW (scalar_t__,scalar_t__) ;
 int wildcardW ;

__attribute__((used)) static BOOL is_matching_identity( const struct assembly_identity *id1,
                                  const struct assembly_identity *id2 )
{
    if (!is_matching_string( id1->name, id2->name )) return FALSE;
    if (!is_matching_string( id1->arch, id2->arch )) return FALSE;
    if (!is_matching_string( id1->public_key, id2->public_key )) return FALSE;

    if (id1->language && id2->language && strcmpiW( id1->language, id2->language ))
    {
        if (strcmpW( wildcardW, id1->language ) && strcmpW( wildcardW, id2->language ))
            return FALSE;
    }
    if (id1->version.major != id2->version.major) return FALSE;
    if (id1->version.minor != id2->version.minor) return FALSE;
    if (id1->version.build > id2->version.build) return FALSE;
    if (id1->version.build == id2->version.build &&
        id1->version.revision > id2->version.revision) return FALSE;
    return TRUE;
}
