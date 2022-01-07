
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int i_attributes; int pp_attributes; TYPE_1__* mediav; } ;
typedef TYPE_2__ sdp_t ;
struct TYPE_4__ {int i_attributes; int pp_attributes; } ;


 char* GetAttribute (int ,int ,char const*) ;

__attribute__((used)) static const char *FindAttribute (const sdp_t *sdp, unsigned media,
                                  const char *name)
{

    const char *attr = GetAttribute (sdp->mediav[media].pp_attributes,
                                     sdp->mediav[media].i_attributes, name);
    if (attr == ((void*)0))
        attr = GetAttribute (sdp->pp_attributes, sdp->i_attributes, name);
    return attr;
}
